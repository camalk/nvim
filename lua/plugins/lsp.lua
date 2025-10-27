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
            diagnostics = {
                -- overwrite: doing this to enable "tiny-inline-diagnostic" plugin to work
                -- without showing extra virtual text.
                --
                -- source: https://github.com/LazyVim/LazyVim/discussions/939
                --
                -- see defaults: https://www.lazyvim.org/plugins/lsp#nvim-lspconfig
                virtual_text = false,
            },
            inlay_hints = { enabled = false },
            servers = {
                pyright = {},
                emmet_language_server = {},
                bashls = {},
                cssls = {
                    settings = { css = { lint = { unknownAtRules = "ignore" } } },
                },
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
    -- -------------------------------------------------
    --                                                 |
    --             TINY INLINE DIAG                    |
    --                                                 |
    -- -------------------------------------------------
    {
        "rachartier/tiny-inline-diagnostic.nvim",
        event = "VeryLazy",
        priority = 1000,
        opts = {
            preset = "powerline",
            options = {
                show_source = { enabled = true },
            },
        },
    },
}
