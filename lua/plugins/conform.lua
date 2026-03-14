-- I feel like this is a good place to find the sensible default args
-- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
return {
    -- -------------------------------------------------
    --               CONFORM (FORMATTING)              |
    -- -------------------------------------------------
    {
        "stevearc/conform.nvim",
        optional = true,
        opts = {
            default_format_opts = {
                stop_after_first = true,
            },
            formatters = {
                terraform_fmt = {
                    command = "tofu", -- override terraform--> tofu
                    args = { "fmt", "-" },
                },
                oxfmt = {
                    -- use oxfmt only if prettier config is not found
                    condition = function(ctx)
                        return not vim.fs.find(
                            { ".prettierrc", ".prettierrc.json", ".prettierrc.js", "prettier.config.js" },
                            { path = ctx.filename, upward = true }
                        )[1]
                    end,
                },
            },
            formatters_by_ft = {
                go = { "goimports", "gofumpt" },
                astro = { "prettierd " },
                javascript = { "oxfmt", "prettierd" },
                typescript = { "oxfmt", "prettierd" },
                javascriptreact = { "oxfmt", "prettierd" },
                typescriptreact = { "oxfmt", "prettierd" },
                svelte = { "prettierd" },
                css = { "oxfmt", "prettierd" },
                html = { "oxfmt", "prettierd" },
                json = { "oxfmt", "prettierd" },
                yaml = { "oxfmt", "prettierd" },
                markdown = { "oxfmt", "prettierd" },
                graphql = { "oxfmt", "prettierd" },
                ocaml = { "ocamlformat" },
            },
        },
    },
}
