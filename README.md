# yellowbeans.nvim
![Visual](https://github.com/gremble0/yellowbeans.nvim/assets/45577341/f5766b1e-bc21-48ea-a69e-9579cf0e412f)
![Telescope](https://github.com/gremble0/yellowbeans.nvim/assets/45577341/c0cda149-45e1-487f-aa44-c345689aafea)

## Description
This is a dependencyless neovim theme initially inspired by jellybeans, but which has become quite different. The theme is written in lua and includes highlight groups for many different nvim plugins such as: TreeSitter, Telescope, nvim-cmp, nvim-notify, and more.

## Installation
Install it using your favorite nvim package manager, This is how to do it with [lazy](https://github.com/folke/lazy.nvim)

```lua
{ "gremble0/yellowbeans.nvim" }

-- With lazy you could also run the command to apply the theme here
{
  "gremble0/yellowbeans.nvim",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("yellowbeans")
  end,
}
```

## Usage
After installing it the theme is available as a colorscheme inside neovim.

```vim
" Vimscript
colorscheme yellowbeans
```

```lua
-- Lua
vim.cmd.colorscheme("yellowbeans")
```

### Lualine
Yellowbeans also comes with two lualine themes that you can `require()` in your lualine config:

### lualine.themes.yellowbeans
![Yellowbeans lualine](https://github.com/gremble0/yellowbeans.nvim/assets/45577341/94b4fd28-af92-4eb7-9669-31ab64bbe02a)
### lualine.themes.yellowbeans-monochrome
![Yellowbeans lualine monochrome](https://github.com/gremble0/yellowbeans.nvim/assets/45577341/fe0f0e64-4a71-45c6-ae2b-07760d7b813c)

You can use them like so:
```lua
lualine.setup({
  options = {
    theme = require("lualine.themes.yellowbeans"), -- OR: "lualine.themes.yellowbeans.monochrome"
  },
})
```
