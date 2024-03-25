# My Neovim Config Repository
## For coding in C and C++

Welcome to my Neovim Config repository!, its configured for C and c++ development.

My Neovim configuration is completely inspired by [Josean Martinez](https://www.youtube.com/@joseanmartinez). I've customized it to suit my workflow preferences. Here are some highlights:

- **Color Scheme**: I use the [vim-moonfly](https://github.com/bluz71/vim-moonfly-colors) color scheme for a soothing and productive coding experience.
- **Status Line**: Implemented with [lualine](https://github.com/nvim-lualine/lualine.nvim) and customized for evil mode using [evil_lualine.lua](https://github.com/nvim-lualine/lualine.nvim/blob/master/examples/evil_lualine.lua).
- **Plugins**:

| Plugin                                                           | Summary                                                                  |
|------------------------------------------------------------------|--------------------------------------------------------------------------|
| [vim-maximizer](https://github.com/szw/vim-maximizer)            | Maximizing and restoring split windows                                   |
| [Comment.nvim](https://github.com/numToStr/Comment.nvim)         | Easy commenting of code                                                  |
| [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)          | File navigation                                                          |
| [Telescope](https://github.com/nvim-telescope/telescope.nvim)    | Fuzzy finding files and text                                             |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)                  | Autocompletion with snippets provided by [LuaSnip](https://github.com/L3MON4D3/LuaSnip) and [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) |
| [MASON](https://github.com/williamboman/mason.nvim)              | Code generation                                                          |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)       | Language server protocol configurations                                   |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Improved syntax highlighting and code analysis                           |

## Installation

To use these configurations:

1. Install Neovim on your system.
2. Clone this repository.
3. Symlink the dot files to their respective locations in your home directory.

```bash
git clone <https://github.com/ravikul505/nvimconfig/>
cd .Nvimconfig
ln -s $(pwd)/.config/nvim ~/.config/nvim
# Repeat the above step for other dot files as needed
```
Feel free to explore and adapt these configurations to suit your own preferences and workflow. If you have any questions or suggestions, feel free to reach out!

Happy coding! 🚀
