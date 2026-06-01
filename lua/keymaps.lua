vim.g.mapleader = " "

vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

-- vim.keymap.set("v", "<S-Tab>", "<", { desc = "Unindent line" })  -- Shift + Tab
-- vim.keymap.set("v", "<S-Tab>", "<gv", { desc = "Unindent selection and keep selection" })  -- Shift + Tab
vim.keymap.set("v", ">", ">gv", { desc = "Indent and keep selection" })
vim.keymap.set("v", "<", "<gv", { desc = "Unindent and keep selection" })

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without yanking" })
vim.keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "Clear search highlightings", silent = true })  -- Ctrl + C

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move lines down in Visual mode" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move lines up in Visual mode" })

vim.keymap.set("n", "n", "nzzzv", { desc = "Move down with the cursor centered" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Move up with the cursor centered" })

-----------------------
-- PLUGIN SPECIFIC:
--- mini.files
vim.keymap.set("n", "<leader>e", "<cmd>lua MiniFiles.open()<CR>", { desc = "Open Mini file explorer" })

--- mini.pick
vim.keymap.set("n", "<leader>fe", "<cmd>lua MiniPick.builtin.files()<CR>", { desc = "MiniPick Files" })
vim.keymap.set("n", "<leader>fg",
    function() MiniPick.builtin.grep({ pattern = vim.fn.expand("<cword>") }) end,
    { desc = "MiniPick Grep" }
)
vim.keymap.set("n", "<leader>fh", "<cmd>lua MiniPick.builtin.help()<CR>", { desc = "MiniPick Help" })

--- mini.extra
vim.keymap.set("n", "<leader>fk", "<cmd>lua MiniExtra.pickers.keymaps()<CR>", { desc = "Helper for searching keymaps" })

