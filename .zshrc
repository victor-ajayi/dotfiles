export DOTFILES="$HOME/.dotfiles"

source $DOTFILES/zsh/config.zsh

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

# zsh-autocomplete
source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
zstyle ':completion:*:warnings' format ''

# ---------- Prompt -----------
# eval "$(starship init zsh)"
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh.toml)"


# ------------- FZF -------------
eval "$(fzf --zsh)"


export HOMEBREW_NO_AUTO_UPDATE=1
