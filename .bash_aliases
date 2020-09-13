source $HOME/dotfiles/_utils.sh

if existsCmd exa; then
  alias ls='exa'
  alias ll='exa -ahl --git'
fi

if existsCmd bat; then
  alias cat='bat'
fi

if existsCmd colordiff; then
  alias diff='colordiff -u'
else
  alias diff='diff -u'
fi


# platforms
getPlatform

if [ "$OS" = "Linux" ]; then
  if existsCmd trash-cli; then
    alias rm='trash-cli'
  fi

  alias pbcopy='xsel --clipboard --output'
fi

if [ "$OS" = "WSL" ]; then
  alias pbcopy='clip.exe'
fi
