export XDG_CONFIG_HOME=~/.config
eval "$(starship init zsh)"


if [[ $(command -v exa) ]]; then
  alias e='exa --icons --git'
  alias l=e
  alias ls=e
  alias ea='exa -a --icons --git'
  alias la=ea
  alias ee='exa -aahl --icons --git'
  alias ll=ee
  alias et='exa -T -L 3 -a -I "node_modules|.git|.cache" --icons'
  alias lt=et
  alias eta='exa -T -a -I "node_modules|.git|.cache" --color=always --icons | less -r'
  alias lta=eta
  alias l='clear && ls'
fi

# opam configuration
[[ ! -r /home/itt/.opam/opam-init/init.zsh ]] || source /home/itt/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null


. $HOME/.asdf/asdf.sh
# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

alias vim=nvim

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export GPG_TTY=$TTY
