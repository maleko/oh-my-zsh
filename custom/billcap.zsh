# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr
#
alias BCW=/Users/marc/workspace/billcap/billcap
alias BC=/Users/marc/workspace/billcap
alias BCS=/Users/marc/workspace/billcap/engines/simply
alias BCSP=/Users/marc/workspace/billcap/engines/space
alias BCE=/Users/marc/workspace/billcap/engines/energy-umpire
alias BCC=/Users/marc/workspace/billcap/engines/costing
alias BCCO=/Users/marc/workspace/billcap/engines/core


alias bcpg="ssh billcap@billcap_db2 \"sudo -u postgres psql -t -c 'SELECT now() - pg_last_xact_replay_timestamp();'\""
alias bpe="pull_engines"

pull_engines() {

  mypath=$PWD

  for repository in ~/workspace/billcap/engines/*; do
    cd $repository
    echo "Pulling $repository"
    git up
  done

  cd $mypath

}

