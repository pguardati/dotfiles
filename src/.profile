export HOMEBREW_NO_AUTO_UPDATE=1

# Source env variables
set -o allexport
source ~/PycharmProjects/proj1/.env
#source ~/PycharmProjects/proj2/.env
set +o allexport

# Extend Pythonpath with project
PYTHONPATH=~/PycharmProjects/proj1/:$PYTHONPATH
#PYTHONPATH=~/PycharmProjects/proj2/:$PYTHONPATH
export PYTHONPATH
