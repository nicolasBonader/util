eval "$(/opt/homebrew/bin/brew shellenv)"

# must have
alias rm='rm -i'
alias ls='ls -lh --color=auto'
alias cdd='cd ..'
alias cddd='cd ../..'
alias cdddd='cd ../../..'

export PATH=$PATH:/opt/homebrew/bin
export PATH=$PATH:/Users/nicolas/Library/Python/3.9/bin
export PATH=$PATH:/Users/nicolas/.bin

# prevent zsh ignoring symbols as word delimiters
autoload -U select-word-style
select-word-style bash

[ -f "/Users/nicolas/.ghcup/env" ] && source "/Users/nicolas/.ghcup/env" # ghcup-env

# vlc exec in terminal
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

# prevent stupid brew from updating everything
export HOMEBREW_NO_AUTO_UPDATE=1

# >>> JVM installed by coursier >>>
export JAVA_HOME="/Users/nicolas/Library/Caches/Coursier/arc/https/github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u292-b10/OpenJDK8U-jdk_x64_mac_hotspot_8u292b10.tar.gz/jdk8u292-b10/Contents/Home"
# <<< JVM installed by coursier <<<

# >>> coursier install directory >>>
export PATH="$PATH:/Users/nicolas/Library/Application Support/Coursier/bin"
# <<< coursier install directory <<<

# GNU FIND
export PATH="/opt/homebrew/opt/findutils/libexec/gnubin:$PATH"

# GNU SED
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"

# git automcompletion
autoload -Uz compinit && compinit

# GO
export PATH="/usr/local/go/bin:$PATH"

# virtualenv
alias ve='(){ source ~/.virtualenvs/$1/bin/activate ;}'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
