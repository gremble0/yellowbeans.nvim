# yellowbeans.nvim
![Normal](https://github.com/gremble0/yellowbeans.nvim/assets/45577341/fc6e6da6-0631-4f45-99ad-f6529219daa2)
![Telescope](https://github.com/gremble0/yellowbeans.nvim/assets/45577341/2f18fcbc-0ed7-4a2a-9bf6-2c9101215352)
![NvimTree](https://github.com/gremble0/yellowbeans.nvim/assets/45577341/46b176a5-19a7-4d28-af6f-2469147ae7c5)

## Description
This is a dependencyless neovim theme similar to jellybeans but with some differences, including as the name suggests having yellow as the main theme contrast color. The theme is written in lua. The theme is intentionally made to only include highlight groups for the most essential parts of the ui which has the benefit of making it very lightweight. If there are any highlight groups you want added, feel free to pull request or contact me.

## Installation
Install it using your favorite nvim package manager, This is how to do it with [lazy](https://github.com/folke/lazy.nvim)

```lua
{ "gremble0/yellowbeans.nvim" }
```

## Usage
After installing it the theme is available as a colorscheme inside neovim.

```vim
colorscheme yellowbeans
```

```lua
vim.cmd.colorscheme "yellowbeans"
```
