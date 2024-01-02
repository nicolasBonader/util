# must have
alias rm='rm -i'
alias ls='ls -lh --color=auto'
alias cdd='cd ..'
alias cddd='cd ../..'
alias cdddd='cd ../../..'

# english international keyboard (linux only)
setxkbmap -layout us -variant altgr-intl
# Swap control and caps lock keys (linux only)
setxkbmap -option ctrl:swapcaps

# GCC
alias gcc2='gcc -Wall -Werror -pedantic -Wextra -ansi -std=c99 -DNDEBUG'
alias gccDebug='gcc -Wall -Werror -pedantic -Wextra -ansi -std=c99 -g -o nombre_debug'
alias valgrind2='valgrind --leak-check=full --show-reachable=yes'
