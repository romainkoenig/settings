parse_git_branch() {
  
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="\e[33m\A:\e[36mRoRo:\e[32m\w\e[0m\$ \$(parse_git_branch)"

alias ls='ls -aGFh'
alias ll='ls -l'

export LSCOLORS="cxfxcxdxbxegedabagaced"
alias ls="ls -G"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export ANDROID_HOME=/Users/romainkoenig/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

export NVM_DIR="/Users/romainkoenig/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export NPM_TOKEN='a8610e09-4b6d-4df1-bde3-f1bc6a57338f'

alias grep='grep --colour=auto --line-number'

nvm use 8

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# added by Anaconda3 5.1.0 installer
export PATH="/anaconda3/bin:$PATH"

alias py="python3"
