export HOMEBREW_NO_AUTO_UPDATE=1

# Source env variables ( useless if using vscode + dotenv )
set -o allexport
#source ~/PycharmProjects/tado-thermostat-consumer/.env
#source ~/PycharmProjects/fullstack-from-scratch/.env
source ~/PycharmProjects/ai-game-search/.env
set +o allexport

# Extend Pythonpath with project ( useless if using vscode + settings.json )
PYTHONPATH=~/PycharmProjects/ai-game-search/project/starter:$PYTHONPATH
export PYTHONPATH

export PATH="$HOME/.local/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
