export DOTFILES="$HOME/.dotfiles"

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH 

# # Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

source $DOTFILES/zsh/.aliases.zsh
source $DOTFILES/zsh/.functions.zsh
source $DOTFILES/zsh/.extras.zsh


# ------------- Starship -------------
eval "$(starship init zsh)"


# pnpm
export PNPM_HOME="/Users/victorajayi/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
