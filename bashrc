# -----------------------------------------------------------------------------
## ---------- If not running interactively, don't do anything
### --- $- will return the current option flags for the current shell. ($ and - are special parameters, $ expands to the process ID of the sell, and - expands to the current option flags set.
### --- so this script is looking for the interactive(i) flag in the output of $-
case $- in
    *i*) ;;
      *) return;;
esac



# -----------------------------------------------------------------------------
## ---------- Envirnoment  Variables



### --- export the TERM variable so that subprocesses can see it
export TERM=xterm-256color
### --- exporting the EDITOR variable so that subprocesses can see it
export EDITOR=vi
### --- exporting the VISUAL variable so that subprocesses can see it
export VISUAL=vi



# -----------------------------------------------------------------------------
## ---------- Pager (less mainly)



### Lesspipe is an input preprocessor for less.  It allows less to show .pdf's, archives, and other file types in a meaningful way.
### ---  If /usr/bin/lesspipe exists and is executable(-x) then
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



# -----------------------------------------------------------------------------
## ---------- Dir Colours


### --- dircolors sets LS_COLORS and exports them
if command -v dircolors 1>/dev/null 2>/dev/null; then
        if test -r ~/.dircolor; then
                eval $(dircolors -b ~/.dircolors)
        else
                eval $(dircolors -b)
        fi
        alias ls="ls -h --color=auto"
fi
eval $(dircolors -b ~/.dircolors)


# -----------------------------------------------------------------------------
## ---------- Aliases


# Set up the ll alias
alias ll='ls -alF'
# Sets up clear screen alias, uses ansi escape to clear
alias c='printf "\e[H\e[2J"'



# -----------------------------------------------------------------------------
## ---------- Prompt

__ps1() {
  export PS1='\[\e[32m\]\u@\w\$\[\e[0m\] '
}
PROMPT_COMMAND='__ps1'

# -----------------------------------------------------------------------------
## ---------- History



export HISTCONTROL=ignoreboth
export HISTSIZE=5000
export HISTFILESIZE=10000


### --- Sets vi mode for bash history navigation
set -o vi

### Enables (sets) histappend. Without histappend, the history won't be saved betweeen sessions, it will be clobbered on every exit.
shopt -s histappend



# -----------------------------------------------------------------------------
## ---------- Functions



cdtemp() {
  name="$1";
  mkdir -p "/tmp/$name";
  cd "/tmp/$name"
} && export -f cdtemp



