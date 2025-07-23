export XDG_CONFIG_HOME="$HOME/.config"
export DOTFILES="$HOME/.dotfiles"

source $DOTFILES/zsh/config.zsh

# ------------- ZSH -------------
export ZSH="$HOME/.oh-my-zsh"

plugins=(
    aliases
    fzf-tab
    zsh-autosuggestions
    fast-syntax-highlighting
    sudo
)


source $ZSH/oh-my-zsh.sh

export HOMEBREW_NO_AUTO_UPDATE=1

# ---------- Prompt -----------
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh.toml)"
# eval "$(starship init zsh)"


# # zsh-autocomplete
# source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# zstyle ':completion:*:warnings' format ''

# ------------- FZF -------------
eval "$(fzf --zsh)"