-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- Disable ESLint LSP server and hide virtual text in Neovim
-- Add this to your init.lua or init.vim file
local isLspDiagnosticsVisible = true
vim.keymap.set("n", "<leader>xx", function()
    isLspDiagnosticsVisible = not isLspDiagnosticsVisible
    vim.diagnostic.config({
            virtual_text = isLspDiagnosticsVisible,
            underline = isLspDiagnosticsVisible
        }) end)

-- neovim
vim.keymap.set('n', '<C-n>', ':Neotree toggle<CR>', { noremap = true, silent = true, desc = "Toggle Neo-tree" })
local map = vim.api.nvim_set_keymap
vim.api.nvim_del_keymap('n', '<leader><leader>')
map('n', '<C-p>', ':Telescope find_files<CR>', { noremap = true, silent = true })
-- Resize splits using Ctrl+w followed by arrow keys
vim.api.nvim_set_keymap('n', '<C-W><Up>', ':resize +2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-W><Down>', ':resize -2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-W><Left>', ':vertical resize -2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-W><Right>', ':vertical resize +2<CR>', { noremap = true, silent = true })

-- clang
vim.api.nvim_set_keymap("", "<leader>mm", ":terminal make<CR>", { noremap = true, silent = true })



-- gh control
vim.api.nvim_set_keymap("", '<leader>prc', ':lua require("toggleterm.terminal").Terminal:new({ cmd = "gh pr create", hidden = true }):toggle()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap( "", '<leader>prr', ':lua require("toggleterm.terminal").Terminal:new({ cmd = "gh dash", hidden = true, direction = "float" }):toggle()<CR>', { noremap = true, silent = true })


-- rust
vim.api.nvim_set_keymap("", "<,>cr", ':TermExec cmd="cargo run"<CR>', { noremap = true, silent = true })

