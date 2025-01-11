# Development Guide

I use [direnv](https://direnv.net/) along with an `.envrc` file to set up the development environment effortlessly by exporting `XDG_CONFIG_HOME` and `NVIM_APPNAME` variables. Simply entering the directory is sufficient to start coding.

Besides the environment variables, `direnv` also evaluates a Nix flake here, if you don't have Nix and do not want that, add a `#` before the `use flake` line. This flake will make `stylua` and `lua-language-server` available for you.

- **Note**: `XDG_CONFIG_HOME` should have within it the folder of your project and `NVIM_APPNAME` corresponds to the project folder name. Also, the `init.lua` file in the project root is used to make a simple Neovim configuration to test the colorscheme and help with development, so feel free to update it as you like.
