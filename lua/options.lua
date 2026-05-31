-- General
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.clipboard:append("unnamedplus")     -- use system clipboard
vim.opt.encoding = "utf-8"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.signcolumn = "yes"
vim.opt.smoothscroll = true
vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")

vim.opt.wrap = false
vim.opt.smartindent = true
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.laststatus = 3
vim.opt.cmdheight = 0

vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.hlsearch = true
vim.opt.incsearch = true    -- highlight while searching

-- Yank highlighter
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight the text when yanking or copying it",
    callback = function()
        vim.hl.on_yank()
    end,
})

