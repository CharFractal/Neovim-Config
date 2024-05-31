--  KEYMAPS

vim.g.mapleader = " "

local keymap  = vim.keymap

--                                                GENERAL
--                                                toggle highlight
keymap.set( "n" , "<leader>nh"  , ":nohl<CR>" )
--                                                x to delete not copy
keymap.set( "n" , "x" , '"_x' )

--                                                SPLIT WINDOW
--                                                vertically
keymap.set( "n" , "<leader>sv"  , "<C-w>v"      )
--                                                horizontally
keymap.set( "n" , "<leader>sh"  , "<C-w>s"      )
--                                                make equal width
keymap.set( "n" , "<leader>se"  , "<C-w>="      )
--                                                close current split window
keymap.set( "n" , "<leader>sx"  , ":close<CR>"  )
--                                                split maximizer
keymap.set( "n" , "<leader>sm"  , ":MaximizerToggle<CR>"  )

--                                                      TABS
--                                                      open new
keymap.set( "n" , "<leader>to"  ,     ":tabnew<CR>"   )
--                                                      close current
keymap.set( "n" , "<leader>tx"  ,     ":tabclose<CR>" )
--                                                      go to next
keymap.set( "n" , "<leader>l" , ":tabn<CR>"     )
--                                                      go to previous
keymap.set( "n" , "<leader>h"  , ":tabp<CR>"     )

--                                                      NVIM-TREE
keymap.set( "n" , "<leader><leader>" , ":NvimTreeToggle<CR>" )

--                                                      TELESCOPE
--                            find files within current working directory, respects .gitignore
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
--                            find string in current working directory as you type
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
--                            find string under cursor in current working directory
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
--                            list open buffers in current neovim instance
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
--                            list available help tags
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

--                                                      AUTO_SESSION
--                            restore last workspace session for current directory
keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" })
--                            save workspace session for current working directory
keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" })

