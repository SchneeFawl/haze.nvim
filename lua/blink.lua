vim.pack.add({
    "https://github.com/saghen/blink.lib",
    "https://github.com/saghen/blink.cmp"
})

local cmp = require('blink.cmp')
cmp.build():pwait()

cmp.setup({
    keymap = { preset = "super-tab" },
    fuzzy = { implementation = "rust" },
    appearance = {
        nerd_font_variant = "mono",
    },
    completion = {
        menu = {
            border = vim.g.border_style,
            scrolloff = 1,
            scrollbar = false,
            draw = {
                components = {
                    kind_icon = {
                        text = function(ctx)
                            local kind_icon, _, _ = require('mini.icons').get('lsp', ctx.kind)
                            return kind_icon
                        end,
                        -- (optional) use highlights from mini.icons
                        highlight = function(ctx)
                            local _, hl, _ = require('mini.icons').get('lsp', ctx.kind)
                            return hl
                        end,
                    }
                }
            },
        },
        documentation = {
            auto_show = true,
            auto_show_delay_ms = 1500,
            window = {
                border = vim.g.border_style
            },
        },
    },
    signature = {
        enabled = true,
        window = { border = vim.g.border_style }
    },
    sources = { default = { "lsp", "path", "snippets", "buffer" } }
})
