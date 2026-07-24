vim.pack.add({
    -- Colorschemes
    "https://github.com/datsfilipe/vesper.nvim",
    "https://github.com/embark-theme/vim",
    "https://github.com/rebelot/kanagawa.nvim",
    "https://github.com/navarasu/onedark.nvim",
    "https://github.com/thesimonho/kanagawa-paper.nvim",
    "https://github.com/catppuccin/nvim",

    -- Extras
    --"https://github.com/nvim-tree/nvim-web-devicons",
})

vim.cmd.colorscheme("catppuccin")

require("mini.icons").setup()


-- Configs for specific color schemes here

require("kanagawa").setup({
    transparent = true
})

require("catppuccin").setup({
    flavor = "mocha",
    transparent_background = false,
    styles = { comments = { "italic" } },
    mini = { enabled = true }
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

