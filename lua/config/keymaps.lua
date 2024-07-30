-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- Disable ESLint LSP server and hide virtual text in Neovim
-- Add this to your init.lua or init.vim file
local isLspDiagnosticsVisible = true
vim.keymap.set("n", "<leader>lx", function()
    isLspDiagnosticsVisible = not isLspDiagnosticsVisible
    vim.diagnostic.config({
            virtual_text = isLspDiagnosticsVisible,
            underline = isLspDiagnosticsVisible
        }) end)


vim.api.nvim_set_keymap("", "<leader>mm", ":terminal make<CR>", { noremap = true, silent = true })


local map = vim.api.nvim_set_keymap
vim.api.nvim_del_keymap('n', '<leader><leader>')
map('n', '<leader>f', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })



-- github control cmds
vim.api.nvim_set_keymap("", "<leader>prc", ":terminal gh pr create<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("", "<leader>prr", ":terminal gh dash pr<CR>", { noremap = true, silent = true })
