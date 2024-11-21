return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local lazy_status = require("lazy.status")
        require("lualine").setup({
            options = {
                theme = "nord",
                sections = {
                    lualine_a = {
                        file = 1,
                    },
                    lualine_x = {
                        {
                            lazy_status.updates,
                            cond = lazy_status.has_updates,
                            color = { fg = "#ff9e64" },
                        },
                    },
                },
            }
        })
    end,
}
