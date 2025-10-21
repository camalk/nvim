-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 100

vim.opt.scrolloff = 10

vim.opt.background = "dark"
vim.opt.winborder = "rounded"

vim.opt.conceallevel = 0

vim.api.nvim_set_hl(0, "@string.documentation.python", { link = "Comment" })

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20,t:block-blinkon500-blinkoff500-TermCursor
vim.opt.guicursor =
    "n-v-c-sm:block,i-ci-ve:block-blinkon500-blinkoff500,r-cr-o:hor20,t:block-blinkon500-blinkoff500-TermCursor"

vim.g.lazyvim_prettier_needs_config = true
