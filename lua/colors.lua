vim.pack.add({
    -- Colorschemes
    "https://github.com/bluz71/vim-moonfly-colors",
    "https://github.com/olivercederborg/poimandres.nvim",
    "https://github.com/datsfilipe/vesper.nvim",
    "https://github.com/embark-theme/vim",

    -- Extras
    "https://github.com/nvim-tree/nvim-web-devicons",
})

-- Configs for specific color schemes here
require("poimandres").setup({
    disable_italics = false,
    bold_vert_split = true
})

require("vesper").setup({
    italics = {
        functions = true,
        variables = true
    }
})


vim.cmd.colorscheme("embark")

