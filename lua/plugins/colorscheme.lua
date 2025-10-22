return {
    -- -------------------------------------------------
    --               COLORSCHEME                       |
    -- -------------------------------------------------
    {
        "lucasadelino/conifer.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            variant = "lunar",
        },
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "conifer-lunar",
        },
    },
}
