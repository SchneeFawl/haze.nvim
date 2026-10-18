require("vim._core.ui2").enable({})

require("options")
require("pack")
require("keymaps")
require("treesitter")
require("colors")
require("blink")

-- LSP CONFIG
vim.lsp.enable({
    "ts_ls",
    "lua_ls",
    "rust_analyzer",
    "qmlls6",
    "pyright",
    "bashls",
    "cssls",
    "html",
})

