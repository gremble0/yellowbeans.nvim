# yellowbeans.nvim
![Normal](https://github.com/gremble0/yellowbeans.nvim/assets/45577341/e3da6223-ecd8-4cc8-b09a-197e39aac33d))
![Telescope](https://github.com/gremble0/yellowbeans.nvim/assets/45577341/b57c5af5-8e9c-421a-9471-75956f975756)

## Description
This is a dependencyless neovim theme similar to jellybeans but with some differences, including as the name suggests having yellow as the main theme contrast color. The theme is written in lua. The theme is intentionally made to only include highlight groups for the most essential parts of the ui which has the benefit of making it very lightweight. If there are any highlight groups you want added, feel free to pull request or contact me.

## Installation
Install it using your favorite nvim package manager, This is how to do it with [lazy](https://github.com/folke/lazy.nvim)

```lua
{ "gremble0/yellowbeans.nvim" }

-- With lazy you could also run the command to apply the theme here
{
  "gremble0/yellowbeans.nvim"
  config = function()
    vim.cmd.colorscheme("yellowbeans")
  end
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

Yellowbeans also comes with a lualine theme that you can `require()` in your lualine config:

```lua
lualine.setup({
  options = {
    theme = require("yellowbeans.lualine"),
  },
})
```
