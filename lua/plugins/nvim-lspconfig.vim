[[plugins]]	
repo = 'Shougo/deoplete.nvim'	
hook_add = ''' 	
call deoplete#custom#var('omni', 'input_patterns', {
    \ 'rust': '(\.|::|->)\w',
    \})

call deoplete#custom#option('sources', {
    \ 'rust': ['lsp'],
    \})
   
call deoplete#custom#source('_', 'converters', [
    \ 'converter_remove_paren',
    \ 'converter_remove_overlap',
    \ 'matcher_length',
    \ 'converter_truncate_abbr',
    \ 'converter_truncate_info',
    \ 'converter_truncate_menu',
    \ 'converter_auto_delimiter',
    \])

set completeopt-=preview

call deoplete#enable()	
'''

[[plugins]]
repo = 'Shougo/deoplete-lsp'	

[[plugins]]
repo = 'neovim/nvim-lsp'
hook_add = '''
    command! Scratch lua require'lsp'.makeScratch()
'''
local util = require 'lspconfig.util'
local port = os.getenv 'GDScript_Port' or '6005'
local cmd = { 'nc', 'localhost', port }
if vim.fn.has 'nvim-0.8' == 1 then
  cmd = vim.lsp.rpc.connect('127.0.0.1', port)
end
return {
  default_config = {
    cmd = cmd,
    filetypes = { 'gd', 'gdscript', 'gdscript3' },
    root_dir = util.root_pattern('project.godot', '.git'),
  },
  docs = {
    description = [[
https://github.com/godotengine/godot
Language server for GDScript, used by Godot Engine.
]],
    default_config = {
      root_dir = [[util.root_pattern("project.godot", ".git")]],
    },
  },
}
