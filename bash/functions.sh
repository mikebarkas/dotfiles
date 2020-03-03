# Set virtaulenv.
function set_virtualenv() {
  if test -z "$VIRTUAL_ENV" ; then
      VIRTUALENV=""
  else
      VIRTUALENV="${BLUE}[`basename \"$VIRTUAL_ENV\"`]${COLOR_NONE}"
  fi
}

# Show path env variable in a vertical list.
show_path() {
  echo $PATH |tr ':' '\n'
}

# Make new directory and cd into it.
mkcd() {
  mkdir -p "$@" && cd "$@"
}

# Better tree
# Hiding .git and directories are first piped into less.
tre() {
	tree -aC -I '.git' --dirsfirst "$@" | less -FRNX
}

# Json  can use with argument or in a pipe
#json() {
#	if [ -t 0 ]; then
#		python -mjson.tool <<< "$*" | pygmentize -l javascript
#	else
#		python -mjson.tool | pygmentize -l javascript
#	fi
#}

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
