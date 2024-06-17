# Bash functions

# cd into a dir and list contents
cs() { cd $1 && l; }

# cd into project dir with fzf
op() {
  cda "$(find ~/Developer -type d -maxdepth 1 | fzf -e --reverse)"
}

# cd into folder and activate venv if exists
cda() {
  builtin cd "$1"
  
  FILE_PATH=".venv/bin/activate"
  if [[ -f "$FILE_PATH" ]]; then
    source "$FILE_PATH"
  fi
}