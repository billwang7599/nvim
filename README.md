# Neovim Setup

What I use as my "IDE". This uses Pvim for managing the environement which is built ontop on Neovim, and Lazy as a package manager. This also includes a [file tree](https://github.com/nvim-tree/nvim-tree.lua) which uses the included nerd font. <br /><br />
This uses [Neovim 0.10+](https://neovim.io): <br />
```shell
# add the repo
sudo add-apt-repository ppa:neovim-ppa/unstable

# update & install
sudo apt-get update
sudo apt-get install neovim
nvim -v # check if the version is updated
```
Include the follow in ```.bashrc``` file.
```shell
PATH="$(pwd)/whatever/path/to/pvim:$PATH" # usually the path is /.config/pvim
```

## Sources

 - [Neovim](https://neovim.io)
 - [Pvim](https://github.com/RoryNesbitt/pvim)
 - [Lazy](https://github.com/folke/lazy.nvim)
 - [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua).

