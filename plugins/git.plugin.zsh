# Aliases
g='git status'
gst='git stash'
gsta='git stash apply'
gstp='git stash pop'
ga='git add'
l='git log'
d='git diff'
gl='git pull'
gup='git fetch && git rebase'
gp='git push'
gd='git diff'
gdv='git diff -w "$@" | vim -R -'
gc='git commit -v'
gca='git commit -v -a'
gcm='git commit -m'
gb='git branch'
gba='git branch -a'
gcount='git shortlog -sn'
gcp='git cherry-pick'
gco='git checkout'
gcom='git checkout master'
gx='gitx'
gsr='git svn rebase'
gsd='git svn dcommit'
ghist="git log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short"
glog='git log --graph --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset"'

# Will return the current branch name
# Usage example: git pull origin $(current_branch)
#
function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

# these aliases take advantage of the previous function
ggpull='git pull origin $(current_branch)'
ggpush='git push origin $(current_branch)'
ggpnp='git pull origin $(current_branch) && git push origin $(current_branch)'

git-new() {
  mkdir "$1" &&
  cd "$1" &&
  git init &&
  touch .gitignore &&
  git add .gitignore &&
  git commit -m "Added .gitignore."
}

