alias ll="ls -la"

export EDITOR=vi

#aliases
alias rh="echo 'sourcing bash profile'; source ~/.bashrc"

function parse_git_branch { git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function proml {
    local        BLUE="\[\033[0;34m\]"
    local         RED="\[\033[0;31m\]"
    local   LIGHT_RED="\[\033[1;31m\]"
    local       GREEN="\[\033[0;32m\]"
    local LIGHT_GREEN="\[\033[1;32m\]"
    local       WHITE="\[\033[1;37m\]"
    local  LIGHT_GRAY="\[\033[0;37m\]"
    case $TERM in
          xterm*)
          TITLEBAR='\[\033]0;\u@\h:\w\007\]'
          ;;
          *)
          TITLEBAR=""
          ;;
        esac

PS1="${TITLEBAR}\
$BLUE[$RED\$(date +%H:%M)$BLUE]\
$BLUE[$RED\u@\h:\w$GREEN\$(parse_git_branch)$BLUE]\
$GREEN\$ "
PS2='> '
PS4='+ '
}
proml

export ANDROID_HOME=/Users/jenriquez/Library/Android/sdk
export ANDROID_HVPROTO=ddm
export PATH=$PATH:$ANDROID_HOME/platform-tools/
export PATH=$PATH:$ANDROID_HOME/tools/
export PATH=$PATH:/Library/Java/JavaVirtualMachines/jdk1.8.0_77.jdk/Contents/Home/bin

# The next line updates PATH for the Google Cloud SDK.
source '/Users/jenriquez/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/jenriquez/google-cloud-sdk/completion.bash.inc'
