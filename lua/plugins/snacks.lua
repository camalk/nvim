return {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
        scroll = {
            -- your scroll configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
            enabled = false,
        },
        -- this one highlights lsp occurrences - can cause visual clutter
        words = { enabled = false },
        indent = {
            enabled = false,
        },
        dashboard = {
            preset = {
                header = require("config.dashboards").get_random(),
            },
        },
    },
}
