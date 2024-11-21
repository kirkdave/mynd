return {
    "cappyzawa/trim.nvim",
    config = function()
        require("trim").setup({
            ft_blocklist = { "markdown" },
            trim_on_write = false,
            trim_trailing = true,
            trim_last_line = false,
            trim_first_line = true,
            highlight = false,
            notifications = false,
        })

        vim.keymap.set("n", "<leader>rw", "<cmd>Trim<CR>", { desc = "Remove trailing whitespace" })
    end,
}
