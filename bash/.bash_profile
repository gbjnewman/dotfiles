#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# bulletproof appending to path. https://unix.stackexchange.com/a/415028
# why add to path in bash_profile(not bashrc) https://superuser.com/a/183980
export PATH="${PATH:+${PATH}:}$HOME/.local/bin:$HOME/bin"

# run fastfetch on login
if command -v fastfetch 2>&1 >/dev/null; then
	fastfetch
fi

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
