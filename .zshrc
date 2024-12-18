export DOTFILES="$HOME/.dotfiles"

source $DOTFILES/zsh/setopt.zsh
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

# ---------- Prompt -----------
# eval "$(starship init zsh)"
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh.toml)"


# ------------- FZF -------------
eval "$(fzf --zsh)"


export HOMEBREW_NO_AUTO_UPDATE=1
