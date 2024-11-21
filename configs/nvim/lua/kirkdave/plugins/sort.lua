return {
	"sQVe/sort.nvim",
	config = function()
		require("sort").setup({})

		vim.cmd([[
            nnoremap <silent> az <Cmd>Sort<CR>
            vnoremap <silent> az <Esc><Cmd>Sort<CR>
            nnoremap <silent> za <Cmd>Sort!<CR>
            vnoremap <silent> za <Esc><Cmd>Sort!<CR>
        ]])
		vim.keymap.set("v", "<leader>az", "<cmd>Sort u<CR>", { desc = "Sort ascending" })
		vim.keymap.set("v", "<leader>za", "<cmd>Sort!<CR>", { desc = "Sort desceding" })
	end,
}
