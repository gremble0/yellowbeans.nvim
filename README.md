# yellowbeans.nvim
![Normal](https://github.com/gremble0/yellowbeans.nvim/assets/45577341/42c1aee3-b8ad-4971-a00a-30494db2ce56)
![Telescope](https://github.com/gremble0/yellowbeans.nvim/assets/45577341/530cb1cb-4950-48c5-b96f-d64afc0d67b0)

## Description
This is a dependencyless neovim theme initially inspired by jellybeans, but which has become quite different. The theme is written in lua and includes highlight groups for many different nvim plugins such as: TreeSitter, Telescope, nvim-cmp, nvim-notify, and more.

## Installation
Install it using your favorite nvim package manager, This is how to do it with [lazy](https://github.com/folke/lazy.nvim)

```lua
{ "gremble0/yellowbeans.nvim" }

-- With lazy you could also run the command to apply the theme here
{
  "gremble0/yellowbeans.nvim"
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
Yellowbeans also comes with a lualine theme that you can `require()` in your lualine config:

```lua
lualine.setup({
  options = {
    theme = require("yellowbeans.lualine"),
  },
})
```
