# Set virtaulenv.
function set_virtualenv() {
  if test -z "$VIRTUAL_ENV" ; then
      VIRTUALENV=""
  else
      VIRTUALENV="${BLUE}[`basename \"$VIRTUAL_ENV\"`]${COLOR_NONE}"
  fi
}

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'
}

# Display branch name.
git_branch() {
  git rev-parse --abbrev-ref HEAD 2> /dev/null
}

# cUrl for IP info.
ipinfo() {
  curl https://ipinfo.io/$1
}
