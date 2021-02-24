# config_files
Instructions to setup a new machine

## install brew, zsh and utils packages
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
/bin/bash -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install wget 
brew install pbcopy
```

## deploy dotfiles
create simlinks with absolute paths.  
e.g:
```
DOTFILES_SOURCE_PATH=/Users/pietro.guardati/PycharmProjects
DOTFILES_DESTINATION_PATH=/Users/pietro.guardati
## editor
ln -nfs $DOTFILES_SOURCE_PATH/dotfiles/src/.vimrc $DOTFILES_DESTINATION_PATH/.vimrc
ln -nfs $DOTFILES_SOURCE_PATH/dotfiles/src/.ideavimrc  $DOTFILES_DESTINATION_PATH/.ideavimrc
## terminal
ln -nfs $DOTFILES_SOURCE_PATH/dotfiles/src/.profile $DOTFILES_DESTINATION_PATH/.profile
ln -nfs $DOTFILES_SOURCE_PATH/dotfiles/src/.bashrc $DOTFILES_DESTINATION_PATH/.bashrc
ln -nfs $DOTFILES_SOURCE_PATH/dotfiles/src/.zshrc $DOTFILES_DESTINATION_PATH/.zshrc
```
