# My dotfiles

My workflow is centered around alacritty, zsh and neovim. These dotfiles can be used either on mac or linux.

# Installation

Clone the repository. I generally clone into ~ so I can quickly edit any dotfile without having to
search for where it is.

```sh
git clone https://github.com/vitorlimadev/dotfiles ~/dotfiles
```

Then link the files/folders symbolically.

```
ln -sf ~/dotfiles/.zshrc .zshrc
ln -sf ~/dotfiles/alacritty ~/.config/alacritty
ln -sf ~/dotfiles/nvim ~/.config/nvim
```

### TODO: Add install instructions for nvim stuff

# NVIM keybinds

Leader key: Space

## File navigation
| Open filetree | <leader>e  |
| File search   | <leader>fs |
