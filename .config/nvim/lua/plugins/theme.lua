return {
    {
        "nvim-lualine/lualine.nvim",
        opts = function()
            return {
                theme = palenight,
                component_separators = { left = "", right = "" }, 
                section_separators = { left = "", right = "" },
            }
        end
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function ()
            -- vim.cmd.colorscheme "catppuccin-mocha"
            -- vim.cmd.colorscheme "catppuccin-macchiato"
            -- vim.cmd.colorscheme "catppuccin-frappe"
            -- vim.cmd.colorscheme "catppuccin-latte"
        end
    },
    {
        'b0o/lavi.nvim',
        dependencies = { 'rktjmp/lush.nvim' },
        priority = 1000,
        config = function()
            -- vim.cmd.colorscheme "lavi"
        end
    },
    {
        "folke/tokyonight.nvim",
        priority = 1000,
        opts = {},
        config = function()
            -- vim.cmd.colorscheme "tokyonight-day"
            -- vim.cmd.colorscheme "tokyonight-night"
            -- vim.cmd.colorscheme "tokyonight-storm"
        end 
    },
    {
        "EdenEast/nightfox.nvim",
        priority = 1000,
        config = function()
            -- vim.cmd.colorscheme "carbonfox"
            -- vim.cmd.colorscheme "dawnfox"
            -- vim.cmd.colorscheme "dayfox"
            -- vim.cmd.colorscheme "duskfox"
            -- vim.cmd.colorscheme "nightfox"
            -- vim.cmd.colorscheme "nordfox"
            vim.cmd.colorscheme "terafox"
        end
    },
}
