return {
    -- -------------------------------------------------
    --               MASON                             |
    -- -------------------------------------------------
    {
        "mason-org/mason.nvim",
        opts = {
            ensure_installed = {
                -- go
                "gopls",
                "gofumpt",
                "goimports",
                -- c
                "clangd",
                "codelldb",
                -- js-ts-web
                "vtsls",
                "prettier",
                "prettierd",
                "tailwindcss-language-server",
                "css-lsp",
                "emmet-language-server",
                "json-lsp",
                "svelte-language-server",
                -- python
                "ruff",
                "pyright",
                -- sh
                "bash-language-server",
                -- zig
                "zls",
                -- lua
                "lua-language-server",
            },
        },
    },
    -- -------------------------------------------------
    --               LSPCONFIG                         |
    -- -------------------------------------------------

    {
        "neovim/nvim-lspconfig",
        ---@class PluginLspOpts
        opts = {
            inlay_hints = { enabled = false },
            servers = {
                pyright = {},
                emmet_language_server = {},
                bashls = {},
                cssls = {},
                tailwindcss = {},
                astro = {},
                zls = {},
                gleam = {},
                vtsls = {},
                ruff_lsp = {},
                gopls = {
                    settings = { gopls = { analyses = { fieldalignment = false } } },
                },
                lua_ls = {},
            },
            setup = {
                rust_analyzer = function()
                    return true
                end,
            },
        },
    },
    -- -------------------------------------------------
    --               DIAGFLOW                          |
    --                                                 |
    --               Better placement for              |
    --               LSP Diagnostic Text               |
    -- -------------------------------------------------

    {
        "dgagn/diagflow.nvim",
        event = "LspAttach",
        opts = {
            format = function(diagnostic)
                local clients = vim.lsp.buf_get_clients()
                for _, client in ipairs(clients) do
                    return client.name .. ": " .. diagnostic.message
                end
            end,
        },
    },

    -- -------------------------------------------------
    --               BLINK.CMP                         |
    --                                                 |
    --               Lightning Fast Cmp                |
    --                                                 |
    -- -------------------------------------------------
    {
        "saghen/blink.cmp",
        opts = {
            completion = {
                documentation = {
                    auto_show = false,
                },
            },
        },
    },
}
