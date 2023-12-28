# Bash functions
# cs() { cd $1 && l; } # cd into a dir and list content
# cda() { cd $1 && activate; } # cd into a directory and activates virtual environment

# cd into project in ~/Developer and activate venv if exists
op() {
  cd "$(find ~/Developer -type d -maxdepth 1 | fzf -e --reverse)" && activate 2>/dev/null
}