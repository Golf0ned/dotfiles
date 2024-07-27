return {
    -- i got lazy so its all in one pile. need to clean up at some point
    -- configure lsp
    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        config = function()
            -- buffer-local keybinds
            vim.api.nvim_create_autocmd("LspAttach", {
                desc = "LSP actions",
                callback = function(event)
                    local opts = {buffer = event.buf}
                    -- TODO: stick the keymaps here im fucking lazy
                end
            })
            -- lsp servers
            local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
            local default_setup = function(server)
                require("lspconfig")[server].setup({
                    capabilities = lsp_capabilities,
                })
            end
            require("mason").setup({})
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "basedpyright",
                    "clangd",
                    "rust_analyzer",
                },
                handlers = {
                    default_setup,
                }
            })
        end
    },
    -- autocomplete
    {
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
        "L3MON4D3/LuaSnip",
        config = function()
            local cmp = require("cmp")
            cmp.setup({
                sources = {
                    {name = "nvim_lsp"}
                },
                mapping = cmp.mapping.prset.insert({
                    -- enter to confirm, ctrl + space to trigger completion menu
                    ["<CR>"] = cmp.mapping.confirm({select = false}),
                    ["<C-Space>"] = cmp.mapping.complete(),
                }),
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end
                },
            })
        end
    },
}
