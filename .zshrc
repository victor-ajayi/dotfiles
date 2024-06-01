export DOTFILES="$HOME/.dotfiles"

source $DOTFILES/zsh/exports.zsh
source $DOTFILES/zsh/aliases.zsh
source $DOTFILES/zsh/functions.zsh

# ------------- ZSH -------------
export ZSH="$HOME/.oh-my-zsh"

plugins=(
    git
    aliases
    fzf-tab
    zsh-autosuggestions
    fast-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
# -------------------------------

# ---------- Starship -----------
eval "$(starship init zsh)"

# ------------- FZF -------------
eval "$(fzf --zsh)"
