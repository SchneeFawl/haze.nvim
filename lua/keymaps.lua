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

-- PLUGIN SPECIFIC:
vim.keymap.set("n", "<leader>e", "<cmd>lua MiniFiles.open()<CR>", { desc = "Open Mini file explorer" })

