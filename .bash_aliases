alias rm='trash-put'
# WSL 用
alias pbcopy='clip.exe'
alias pbpaste='xsel --clipboard --output'
if [[ -x `which colordiff` ]]; then
  alias diff='colordiff -u'
else
  alias diff='diff -u'
fi
