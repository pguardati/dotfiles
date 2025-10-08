#!/bin/bash
# Script that links the repo dotfiles to the user's home directory

DEFAULT_SOURCE_PATH="$HOME/PycharmProjects/dotfiles/src"
DEFAULT_DESTINATION_PATH="$HOME"
CURSOR_KEYBINDINGS_DIR="$HOME/Library/Application Support/Cursor/User"
VSCODE_KEYBINDINGS_DIR="$HOME/Library/Application Support/Code/User"

prompt_user() {
  read -p "Do you want to use the default paths?
Source: $DEFAULT_SOURCE_PATH
Destination: $DEFAULT_DESTINATION_PATH
(y/n): " use_defaults

  if [[ $use_defaults == [yY] ]]; then
    SOURCE_PATH=$DEFAULT_SOURCE_PATH
    DESTINATION_PATH=$DEFAULT_DESTINATION_PATH
  else
    read -p "Enter source path: " SOURCE_PATH
    read -p "Enter destination path: " DESTINATION_PATH
  fi
}

create_links() {

  # Create symbolic links for editor configurations
  ln -nfs $SOURCE_PATH/.vimrc $DESTINATION_PATH/.vimrc
  ln -nfs $SOURCE_PATH/.ideavimrc $DESTINATION_PATH/.ideavimrc
  # Create symbolic links for terminal configurations
  ln -nfs $SOURCE_PATH/.profile $DESTINATION_PATH/.profile
  ln -nfs $SOURCE_PATH/.bashrc $DESTINATION_PATH/.bashrc
  ln -nfs $SOURCE_PATH/.zshrc $DESTINATION_PATH/.zshrc
  ln -nfs $SOURCE_PATH/.tmux.conf $DESTINATION_PATH/.tmux.conf
  echo "Dotfiles linked from $SOURCE_PATH to $DESTINATION_PATH"

  # Link VSCode keybindings to Cursor keybindings
  ln -nfs "$DEFAULT_SOURCE_PATH/../ide_vscode/keybindings.json" "$CURSOR_KEYBINDINGS_DIR/keybindings.json"
  echo "VSCode keybindings linked to Cursor at $CURSOR_KEYBINDINGS_DIR/keybindings.json"

  ln -nfs "$DEFAULT_SOURCE_PATH/../ide_vscode/keybindings.json" "$VSCODE_KEYBINDINGS_DIR/keybindings.json"
  echo "VSCode keybindings linked to VSCode at $VSCODE_KEYBINDINGS_DIR/keybindings.json"
}

main() {
  prompt_user
  create_links
}

main
