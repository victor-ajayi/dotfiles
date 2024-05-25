# Bash functions
# cs() { cd $1 && l; } # cd into a dir and list content
# cda() { cd $1 && activate; } # cd into a directory and activates virtual environment

# cd into project dir with fzf
op() {
  cd "$(find ~/Developer -type d -maxdepth 1 | fzf -e --reverse)"
}

# Activates venv if it exists
source_venv() {
  FILE_PATH=".venv/bin/activate"

  if [[ -f "$FILE_PATH" ]]; then
    source "$FILE_PATH"
  fi
}

# Activates venv upon cd
cd() {
  builtin cd "$1" && source_venv
}