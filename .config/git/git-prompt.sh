# C:\Users\<profile>\.config\git

PS1='\[\033]0;$TITLEPREFIX:\W\007\]' # set window title
PS1="$PS1"'\n'                       # new line
PS1="$PS1"'\[\033[35m\]'             # change to purple
PS1="$PS1"'git'                      # git user
if test -z "$WINELOADERNOEXEC"
then
    GIT_EXEC_PATH="$(git --exec-path 2>/dev/null)"
    COMPLETION_PATH="${GIT_EXEC_PATH%/libexec/git-core}"
    COMPLETION_PATH="${COMPLETION_PATH%/lib/git-core}"
    COMPLETION_PATH="$COMPLETION_PATH/share/git/completion"
    if test -f "$COMPLETION_PATH/git-prompt.sh"
    then
        . "$COMPLETION_PATH/git-completion.bash"
        . "$COMPLETION_PATH/git-prompt.sh"
        PS1="$PS1"'\[\033[36m\]'   # change color to cyan
        PS1="$PS1"'`__git_ps1` '   # bash function
    fi
fi
PS1="$PS1"'\[\033[33m\]'       # change to brownish yellow
PS1="$PS1"'📁 \W'                # current working directory
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'\[\033[32m\]'       # change to green
PS1="$PS1"'> '                 # prompt: default $
PS1="$PS1"'\[\033[0m\]'        # change color