setopt HIST_IGNORE_DUPS
setopt APPEND_HISTORY 
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS


# exports
export PATH=$HOME/bin:/usr/local/bin:$PATH
export LANG=en_US.UTF-8

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/Users/victorajayi/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


# aliases
alias python=python3
alias activate="source .venv/bin/activate"
alias pip="pip3"
alias mkdir="mkdir -pv"
alias cls="clear"
alias lg="lazygit"
alias ld="lazydocker"
alias findd="find . -maxdepth 1 | fzf"
alias dotfiles="code ~/.dotfiles"
alias uvexp="uv export --format requirements-txt --no-hashes --output-file requirements.txt --quiet"
alias dcu="docker compose up --build -d"
alias omp="oh-my-posh"
alias k="kubectl"

# Check for updates every 21 days
zstyle ':omz:update' frequency 21


# functions
cs() { cd $1 && ls -lah; }

op() {
  cd "$(find ~/Developer -type d -maxdepth 1 | fzf -e --reverse)"
}

mkpack() {
  mkdir "$1" && touch "$1"/__init__.py
}