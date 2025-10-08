export HOMEBREW_NO_AUTO_UPDATE=1
export ANTHROPIC_API_KEY=

# Source env variables ( useless if using vscode + dotenv )
set -o allexport
#source ~/PycharmProjects/draft-projects/.env
set +o allexport

# Extend Pythonpath with project ( useless if using vscode + settings.json )
#PYTHONPATH=~/PycharmProjects/draft-projects/:$PYTHONPATH
export PYTHONPATH

export PATH="$HOME/.local/bin:$PATH"
