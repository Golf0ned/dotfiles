return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
            vim.keymap.set("n", "<leader>fg", function()
                builtin.grep_string({ search = vim.fn.input("Grep > ") })
            end)
            require("telescope").load_extension("fzf")
        end
    },
    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local harpoon = require('harpoon')
            harpoon:setup()
            vim.keymap.set("n", "hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
            vim.keymap.set("n", "ha", function() harpoon:list():add() end)
            vim.keymap.set("n", "h1", function() harpoon:list():select(1) end)
            vim.keymap.set("n", "h2", function() harpoon:list():select(2) end)
            vim.keymap.set("n", "h3", function() harpoon:list():select(3) end)
            vim.keymap.set("n", "h4", function() harpoon:list():select(4) end)
        end
    },
}
