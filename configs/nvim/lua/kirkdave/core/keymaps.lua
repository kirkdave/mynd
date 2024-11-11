vim.g.mapleader = " " -- set our leader key to space

local keymap = vim.keymap

-- clear search highlighting
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlighting" })
