return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function ()
            vim.cmd.colorscheme "catppuccin-mocha"
            -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end
    },
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
}
