return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "bash"
                "c",
                "cpp",
                "css",
                "html",
                "javascript",
                "llvm",
                "lua",
                "markdown",
                "markdown-inline",
                "python",
                "query",
                "rust",
                "toml",
                "vim",
                "vimdoc",
            },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        })
    end
}
