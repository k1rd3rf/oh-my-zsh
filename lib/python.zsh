function wo() {
    [ -f './.venv' ] && workon `cat ./.venv`
}

alias cdv='cd $WORKON_HOME'

function cdp () {
  cd "$(python -c "import os.path as _, ${1}; \
    print _.dirname(_.realpath(${1}.__file__[:-1]))"
  )"
}