if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Paths 
export ZSH="$HOME/.oh-my-zsh"
export PATH=$HOME/.local/bin:$PATH


# Aliases
alias ni="npm install"
alias ns="npm start"
alias next="npm run dev"
alias home='$HOME'
alias rzsh='source .zshrc'
alias rtmux='tmux source .tmux.conf'
alias v='nvim'
alias q='tmux kill-serve'

# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-z
)

source $ZSH/oh-my-zsh.sh

#NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
