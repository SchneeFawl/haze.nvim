local treesitter = require("nvim-treesitter")

local ensure_installed = {
    -- Languages
    "bash", "css", "html", "python", "qmljs",
    "rust", "javascript", "typescript", "tsx",
    "toml", "yaml", "cpp", "c", "java", "lua",
    -- Other stuff
    "markdown", "dockerfile", "markdown_inline",
}

treesitter.install(ensure_installed)

vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function(args)
        local buffer = args.buf
        local filetype = vim.bo[buffer].filetype

        local lang = vim.treesitter.language.get_lang(filetype)
        if not lang then
            return
        end

        local ok_add = pcall(vim.treesitter.language.add, lang)
        if not ok_add then
            return
        end

        pcall(vim.treesitter.start, buffer, lang)
    end
})

