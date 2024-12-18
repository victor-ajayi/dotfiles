# Bash functions

# cd into a dir and list contents
cs() { cd $1 && ls -lah; }

# cd into project dir with fzf
op() {
  cd "$(find ~/Developer -type d -maxdepth 1 | fzf -e --reverse)"
}

opc() {
  op && code .
}

# cd into folder and activate venv if exists
cd() {
  builtin cd "$1"
  
  FILE_PATH=".venv/bin/activate"
  if [[ -f "$FILE_PATH" ]]; then
    source "$FILE_PATH"
  fi
}

mkpack() {
  mkdir "$1" && touch "$1"/__init__.py
}