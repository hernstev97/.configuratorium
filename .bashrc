# ZOXIDE CONFIG
eval "$(zoxide init bash)"

# FZF CONFIG
eval "$(fzf --bash)"

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

export FZF_DEFAULT_OPTS="--height 50% --layout=default --border --color=hl:#352950"

# ALIASES
alias ..="cd .."
alias ll="eza -a -l -h --git -m"
alias lls="eza -a -l -h --git -m --total-size"
