-- options.lua
local opt = vim.opt

opt.expandtab = false
opt.shiftwidth = 4
opt.tabstop = 4
opt.autoindent = true
opt.smartindent = true
opt.undofile = false
opt.number = true;
opt.relativenumber = false;

-- scale neovide
vim.g.neovide_scale_factor = 0.5

function ChangeScaleFactor(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + delta
end

vim.api.nvim_set_keymap('n', '<C-S-Up>', "<Cmd>lua ChangeScaleFactor(0.1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-S-Down>', "<Cmd>lua ChangeScaleFactor(-0.1)<CR>", { noremap = true, silent = true })
