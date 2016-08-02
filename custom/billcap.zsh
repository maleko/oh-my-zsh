# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr
#
alias BCW=/Users/marc/workspace/billcap/billcap
alias BCC=/Users/marc/workspace/billcap/chef-repo
alias BC=/Users/marc/workspace/billcap
alias BCA=/Users/marc/workspace/billcap/api
alias BCT=/Users/marc/workspace/billcap/template

alias bcpg="ssh billcap@billcap_db2 \"sudo -u postgres psql -t -c 'SELECT now() - pg_last_xact_replay_timestamp();'\""
alias bpe="pull_engines"

pull_engines() {

  mypath=$PWD

  for repository in ~/workspace/billcap/engines/*; do
    cd $repository
    echo "--- Pulling $repository ---"
    git up
    echo "--- Bundling $repository ---"
    bundle
  done

  cd $mypath

}

alias shove='git pull --rebase && bundle && be rake && git push'

