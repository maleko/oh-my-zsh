# Aliases
alias g='git status'
alias gst='git stash'
alias gsta='git stash apply'
alias gstp='git stash pop'
alias ga='git add'
alias l='git log'
alias d='git diff'
alias gl='git pull'
alias gup='git fetch && git rebase'
alias gp='git push'
alias gd='git diff'
alias gdv='git diff -w "$@" | vim -R -'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcm='git commit -m'
alias gb='git branch'
alias gba='git branch -a'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gco='git checkout'
alias gcom='git checkout master'
alias gx='gitx'
alias gsr='git svn rebase'
alias gsd='git svn dcommit'
alias ghist='git log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short'

# Git and svn mix
alias git-svn-dcommit-push='git svn dcommit && git push github master:svntrunk'

#
# Will return the current branch name
# Usage example: git pull origin $(current_branch)
#
function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

# these aliases take advantage of the previous function
alias ggpull='git pull origin $(current_branch)'
alias ggpush='git push origin $(current_branch)'
alias ggpnp='git pull origin $(current_branch) && git push origin $(current_branch)'
