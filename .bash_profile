# https://www.npmjs.org/package/nvm Said to
export PATH=./node_modules/.bin:$PATH

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
  GIT_PS1_SHOWDIRTYSTATE=true
  export PS1='[\u@mbp \w$(__git_ps1)]\$ '
fi
if [ -f ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi

source ~/.bash_ps1
source ~/.profile

# ALIAS
alias ls='ls -laGAh'

alias fastbuild='mvn clean install -Dmaven.test.skip=true -T 1C'
alias mci='mvn clean install'

function git-cpick() {
	git cherry-pick `git log ${1} -n${2} --pretty=format:%h --reverse`	
}