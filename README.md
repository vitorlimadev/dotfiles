# My dotfiles

My workflow is centered around alacritty, zsh and neovim. These dotfiles can be used either on mac or linux.
The neovim configuration is configured to work with Elixir, Lua and JSON, but you can easily add more
languages in the llsp-config and treesitter-config files.

## Installation

Clone the repository. I generally clone into ~ so I can quickly edit any dotfile without having to
search for where it is.

```
git clone https://github.com/vitorlimadev/dotfiles ~/dotfiles
```

Install [oh-my-zsh](https://ohmyz.sh).

Then link the files/folders symbolically. Make sure to delete (or backup with a different name) your
old files/folders if they exist.

```
ln -sf ~/dotfiles/.zshrc .zshrc
ln -sf ~/dotfiles/alacritty ~/.config/alacritty
ln -sf ~/dotfiles/nvim ~/.config/nvim
```

**TODO: Add install instructions for nvim stuff**

## NVIM keybinds

Leader key: Space

**TODO: Add keybinds**
