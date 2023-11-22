autoload -Uz compinit
compinit

PROMPT=$'%n@%m %~\n%(!.#.$) '

precmd() {
	printf '\e]7;file://%s\e\\' "$PWD"
}

alias ls='ls --color=auto'
alias ip='ip -color=auto'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
export MANPAGER="less -R --use-color -Dd+r -Du+b"
alias config='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
