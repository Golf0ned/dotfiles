return {
    {
        "tpope/vim-commentary",
        config = function()
            -- check repo for how to add commentstrings
        end,
    },
    {
        "cohama/lexima.vim",
    },
    {
        "mbbill/undotree",
        config = function()
            vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
        end,
    },
}
