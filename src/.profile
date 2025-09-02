export HOMEBREW_NO_AUTO_UPDATE=1

# Source env variables ( useless if using vscode + dotenv )
set -o allexport
source ~/PycharmProjects/tado-thermostat-consumer/.env
set +o allexport

# Extend Pythonpath with project ( useless if using vscode + settings.json )
#PYTHONPATH=~/PycharmProjects/proj2/:$PYTHONPATH
export PYTHONPATH

export PATH="$HOME/.local/bin:$PATH"
