## ---------- If not running interactively, don't do anything
### --- $- will return the current option flags for the current shell. ($ and - are special parameters, $ expands to the process ID of the sell, and - expands to the current option flags set.
### --- so this script is looking for the interactive(i) flag in the output of $-
case $- in
    *i*) ;;
      *) return;;
esac



## ---------- Envirnoment  Variables



### --- export the TERM variable so that subprocesses can see it
export TERM=xterm-256color
### --- export the EDITOR variable so that subprocesses can see it
export EDITOR=vi
### --- export the VISUAL variable so that subprocesses can see it
export VISUAL=vi



## ---------- Pager (less mainly)



### Lesspipe is an input preprocessor for less.  It allows less to show .pdf's, archives, and other file types in a meaningful way.
### ---  If /usr/bin/lesspipe exists and is executable(test -x) then
### ---  Sets and exports LESSOPEN so less uses lesspipe automatically.
### ---
if test -x /usr/bin/lesspipe; then
  export LESSOPEN="| /usr/bin/lesspipe %s";
  export LESSCLOSE="/usr/bin/lesspipe %s %s";
fi

### Pager colorization
### --- Uses old TERMCAP variables that less still observes.
export LESS_TERMCAP_mb="^[[35m" # magenta
export LESS_TERMCAP_md="^[[33m" # yellow
export LESS_TERMCAP_me="^[[0m"  # colour reset
export LESS_TERMCAP_se="^[[0m"  # colour reset
export LESS_TERMCAP_so="^[[34m" # blue
export LESS_TERMCAP_ue="^[[0m"  # colour reset
export LESS_TERMCAP_us="^[[4m" # underline



## ---------- Dir Colours


# Coming soon


## ---------- History



export HISTCONTROL=ignoreboth
export HISTSIZE=5000
export HISTFILESIZE=10000


### --- Sets vi mode for bash history navigation (remember that it will be in "insert" mode to start with, will need to "esc" to get into "normal" mode)
set -o vi

### Enables (sets) histappend. Without histappend, the history won't be saved betweeen sessions, it will be clobbered on every exit.
shopt -s histappend
