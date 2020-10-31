source $HOME/dotfiles/_utils.sh

if existsCmd bat; then
  alias cat='bat'
fi

if existsCmd colordiff; then
  alias diff='colordiff -u'
else
  alias diff='diff -u'
fi

if existsCmd exa; then
  alias ls='exa'
  alias ll='exa -ahl --git'
fi

if existsCmd nvim; then
  alias vi='nvim'
fi


# platforms
getPlatform

if [ "$OS" = "Linux" ]; then
  if existsCmd trash-put; then
    alias rm='trash-put'
  fi

  alias pbcopy='xsel --clipboard --output'
fi

if [ "$OS" = "WSL" ]; then
  if existsCmd trash-put; then
    alias rm='trash-put'
  fi

  alias pbcopy='clip.exe'
fi

alias random='echo $(($RANDOM % 180))'
