return {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        local nvimtree = require("nvim-tree")

        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        local config = {}

        config.view = {}
        config.view.adaptive_size = true
        config.view.side = "right"
        config.view.width = 40
        config.view.relativenumber = true

        config.renderer = {}
        config.renderer.group_empty = true
        config.renderer.highlight_git          = true
        config.renderer.highlight_diagnostics  = true
        config.renderer.highlight_bookmarks    = "all"
        config.renderer.highlight_clipboard    = "all"

        config.renderer.indent_markers = {
            enable = true,
        }

        config.renderer.icons = {}
        config.renderer.icons.webdev_colors = false
        config.renderer.icons.git_placement = "after"
        config.renderer.icons.modified_placement = "after"
        config.renderer.icons.glyphs = {
            git = {
                -- Git style symbols
                -- \uf06a
                unstaged  = "",
                -- \uf055
                staged    = "",
                -- \ue0a0
                unmerged  = "",
                -- \uf040
                renamed   = "",
                -- \uf059
                untracked = "",
                -- \uf530
                deleted   = "",
                -- \ue668
                ignored   = ""
            },
            folder = {
                arrow_closed = "",
                arrow_open = "",
                default = "",
                open = "",
                empty = "",
                empty_open = ""
            },

        }

        config.git = {}
        config.git.enable = true
        config.git.ignore = false

        config.actions = {}
        config.actions.open_file = {
            window_picker = {
                enable = false,
            },
        }

        config.filters = {
            custom = {
                ".DS_Store",
            },
        }


        nvimtree.setup(config)

        local keymap = vim.keymap
        keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
        keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
        keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
        keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })

    end,
}
