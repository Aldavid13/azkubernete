# Begin ~/.bashrc
# Written for Beyond Linux From Scratch
# by James Robertson <jameswrobertson@earthlink.net>

# Personal aliases and functions.

# Personal environment variables and startup programs should go in
# ~/.bash_profile.  System wide environment variables and startup
# programs are in /etc/profile.  System wide aliases and functions are
# in /etc/bashrc.

if [ -f "/etc/bash.bashrc" ] ; then
  source /etc/bash.bashrc
fi

# End ~/.bashrc
source /etc/bash_completion.d/azure-cli
#ADDED_HIST_APPEND_CHECK
shopt -s histappend
#ADDED_HIST_CONTROL_CHECK
HISTCONTROL=ignoreboth
#ADDED_HIST_PROMPT_COMMAND_CHECK
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
PS1=${PS1//\\h/Azure}
source /usr/bin/cloudshellhelp
