return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {
                "lua",
                "vim",
                "vimdoc",
                "javascript",
                "typescript",
                "tsx",
                "html",
                "css",
                "markdown",
                "markdown_inline",
                "bash",
                "dockerfile",
                "gitignore",
                "json",
                "ruby",
                "java",
                "php"
            },

            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
            autotag = { enabled = true },
        })
    end,
}
