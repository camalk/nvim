return {
    "chrisgrieser/nvim-scissors",
    dependencies = { "folke/snacks.nvim" }, -- if using telescope

    opts = {
        snippetDir = vim.fn.stdpath("config") .. "/snippets",
        jsonFormatter = "jq",
    },

    -- Lazy-load on these keybindings
    keys = {
        {
            "<leader>se",
            desc = "Snippet: Edit",
            mode = { "n" },
            function()
                require("scissors").editSnippet()
            end,
        },
        {
            "<leader>sa",
            desc = "Snippet: Add",
            mode = { "n", "x" },
            function()
                require("scissors").addNewSnippet()
            end,
        },
    },
}
