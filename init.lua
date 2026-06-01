require("vim._core.ui2").enable({})

require("options")
require("pack")
require("keymaps")

-- LSP Configs
vim.lsp.enable({
    "lua_ls",
    "qmlls6",
    "pyright",
    "cssls",
    "html",
})

