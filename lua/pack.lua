vim.pack.add({
    { src = "https://github.com/wakatime/vim-wakatime" },
    { src = "https://github.com/brenoprata10/nvim-highlight-colors" },
    { src = "https://github.com/nvim-mini/mini.nvim" },
    { src = "https://github.com/rafamadriz/friendly-snippets" },

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
    -- only show messages (no time)
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

require("mini.pick").setup({})

require("mini.completion").setup({
    lsp_completion = {
        auto_setup = true,
        process_items = function(items, base)
            return MiniCompletion.default_process_items(items, base, {
                filtersort = "fuzzy"
            })
        end
    }
})

local MiniSnippets = require("mini.snippets")
MiniSnippets.setup({
    snippets = {
        MiniSnippets.gen_loader.from_lang()
    },
    expand = {
        insert = function(snippet)
            MiniSnippets.default_insert(snippet, { empty_tabstop = "" })
        end
    }
})
MiniSnippets.start_lsp_server({ match = false })

require("mini.extra").setup({})

