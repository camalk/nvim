return {
    -- -------------------------------------------------
    --               TREESITTER                        |
    -- -------------------------------------------------
    -- Treesitter auto install parsers
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            if type(opts.ensure_installed) == "table" then
                vim.list_extend(opts.ensure_installed, {
                    "astro",
                    "bash",
                    "c",
                    "c_sharp",
                    "cpp",
                    "diff",
                    "dockerfile",
                    "dtd",
                    "gleam",
                    "go",
                    "gomod",
                    "gosum",
                    "gowork",
                    "hcl",
                    "html",
                    "javascript",
                    "jsdoc",
                    "json",
                    "json5",
                    "jsonc",
                    "lua",
                    "luadoc",
                    "luap",
                    "markdown",
                    "markdown_inline",
                    "nix",
                    "ocaml",
                    "printf",
                    "python",
                    "query",
                    "regex",
                    "ron",
                    "rust",
                    "svelte",
                    "terraform",
                    "toml",
                    "tsx",
                    "typescript",
                    "vim",
                    "vimdoc",
                    "xml",
                    "yaml",
                })
            end
        end,
    },
}
