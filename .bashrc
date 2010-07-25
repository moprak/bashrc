# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

################################ EXPORTS ##################################
# Export required stuff

if [ -f $HOME/.bash_stuff/exports ]; then
    source $HOME/.bash_stuff/exports
fi

###########################################################################


################################ ALIASES ##################################
# Include alias definitions.

if [ -f $HOME/.bash_stuff/aliases ]; then
    source $HOME/.bash_stuff/aliases
fi

###########################################################################


################################ OTHERS ##################################
# include all other definitions.

if [ -f $HOME/.bash_stuff/others ]; then
    source $HOME/.bash_stuff/others
fi

###########################################################################


################################ FUNCTIONS ##################################
# Include function definitions.

if [ -f $HOME/.bash_stuff/functions ]; then
    source $HOME/.bash_stuff/functions
fi

###########################################################################


################################ PROMPT ###################################
# Load our custom prompt
case "$TERM" in
screen-256color)
if [ -f $HOME/.bash_stuff/prompt ]; then
    source $HOME/.bash_stuff/prompt
fi
;;
screen)
if [ -f $HOME/.bash_stuff/prompt ]; then
    source $HOME/.bash_stuff/prompt
fi
;;
xterm)
if [ -f $HOME/.bash_stuff/prompt ]; then
    source $HOME/.bash_stuff/prompt
fi
;;
xterm-256color)
if [ -f $HOME/.bash_stuff/prompt ]; then
    source $HOME/.bash_stuff/prompt
fi
;;
*)
;;
esac

###########################################################################


####################### KDE Development ###################################

source $HOME/.cd-function

###########################################################################


########################## WELCOME SCREEN #################################

clear
echo -ne "${GREEN}" "Hello Doc. Today is "; date '+%A, %B %-d %Y'
echo -e "${LIGHTGRAY}"; cal ;
echo -ne "${CYAN}";
echo -ne "${CYAN} Sysinfo - Uptime ";uptime | awk '{print $3,$4,$5,$6,$7,$8,$9,$10,$11}' ;echo ""
echo -ne "${BROWN}";fortune;echo ""

###########################################################################
