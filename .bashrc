#
# ~/.bashrc
#
cd() {
  builtin cd "$@" && pwd > ~/.last_dir
}


PROMPT_COMMAND='pwd > ~/.last_dir'
cd "$(cat ~/.last_dir)"

eval "$(oh-my-posh init bash --config ~/.config/catppuccin_frappe.omp.json)"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
