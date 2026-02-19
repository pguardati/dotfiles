export HOMEBREW_NO_AUTO_UPDATE=1
export ANTHROPIC_API_KEY=

# Source env variables ( useless if using vscode + dotenv )
set -o allexport
#source ~/PycharmProjects/tado-thermostat-consumer/.env
#source ~/PycharmProjects/web-server-v1/.env
#source ~/PycharmProjects/_experiments/image-processor-or-agent/.env
#source ~/PycharmProjects/_experiments/random-build/.env
#source ~/PycharmProjects/_experiments/random-build-2/.env
#source ~/PycharmProjects/_experiments/random-build-3/.env
#source ~/PycharmProjects/_experiments/random-build-4/.env
set +o allexport

# Extend Pythonpath with project ( useless if using vscode + settings.json )
#PYTHONPATH=~/PycharmProjects/draft-projects/:$PYTHONPATH
#PYTHONPATH=~/PycharmProjects/code-drawing-v1/:$PYTHONPATH
export PYTHONPATH

export PATH="$HOME/.local/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
export OLLAMA_ORIGINS=*
