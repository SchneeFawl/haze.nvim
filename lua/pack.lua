vim.pack.add({
    {
        src = "https://github.com/wakatime/vim-wakatime"
    },
    {
        src = "https://github.com/brenoprata10/nvim-highlight-colors"
    },
    {
        src = "https://github.com/nvim-mini/mini.nvim"
    }
})

require("nvim-highlight-colors").setup({})

require("mini.files").setup({
    mappings = {
        go_in = "<CR>",
        go_in_plus = "L",
        go_out = "h",
        go_out_plus = "H",
    }
})

require("mini.notify").setup({
    -- only show messages
    content = {
        format = function(notif)
            return notif.msg
        end
    }
})

require("mini.cmdline").setup({
    autocomplete = {
        enable = true,
        delay = 0,
        map_arrows = true
    },
    autopeek = {
        enable = true
    }
})

require("mini.surround").setup({})

