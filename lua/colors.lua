vim.pack.add({
    -- Colorschemes
    "https://github.com/olivercederborg/poimandres.nvim",
    "https://github.com/datsfilipe/vesper.nvim",
    "https://github.com/embark-theme/vim",
    "https://github.com/rebelot/kanagawa.nvim",
    "https://github.com/navarasu/onedark.nvim",
    "https://github.com/thesimonho/kanagawa-paper.nvim",

    -- Extras
    --"https://github.com/nvim-tree/nvim-web-devicons",
})

require("mini.icons").setup()

-- Configs for specific color schemes here
require("poimandres").setup({
    disable_background = true,
    disable_italics = false,
    bold_vert_split = true
})

require("kanagawa").setup({
    transparent = true
})

require("vesper").setup({
    transparent = true,
    italics = {
        functions = true,
        variables = true
    }
})

require("onedark").setup({
    style = "darker",
    transparent = true,
    lualine = { transparent = true }
})

require("kanagawa-paper").setup({
    transparent = true,
    diag_background = true
})

vim.cmd.colorscheme("vesper")

