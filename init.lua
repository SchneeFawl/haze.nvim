require("vim._core.ui2").enable({})

require("options")
require("pack")
require("keymaps")
require("treesitter")
require("colors")
require("blink")

-- LSP CONFIG
vim.lsp.enable({
    "lua_ls",
    "qmlls6",
    "pyright",
    "cssls",
    "html",
})

