return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function ()
            vim.cmd.colorscheme "catppuccin-mocha"
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end
    },
    {
        "vim-airline/vim-airline",
        dependencies = {"vim-airline/vim-airline-themes"},
        config = function()
            vim.cmd[[
                let g:airline#extensions#tabline#enabled = 1
                let g:airline#extensions#tabline#formatter = 'default'
                let g:airline_theme = 'bubblegum'
                let g:airline_powerline_fonts = 1
            ]]
        end
    },
}
