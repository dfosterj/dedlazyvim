# 💤 DEDLazyVim
for even the lazier

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim)
includes installers for debian based linux distros, working ulitsnips, lazygit, lsp

![alt text](https://github.com/dfosterj/dedneovim/blob/main/.preview.png?raw=true)

# Dependencies
neovim-cmp
python3-pynvim
remove any instance of neovim
run installers found ./installers


# Helpful quick start keybindings
* leader is default space key and this maintains most default lazyvim keyboard shortcuts besides below
* shotcut list at space+s+k
* nerdtree space+e
* fuzzy finder space+f
* buffer switching shift+H, shift+L.
* ulitsnips edit space+u+e
* toggle errors and warnings space+l+x
* highlight and = autoformats
* buffer delete space+b+d


# Addtional info
* colorschemes found at lua/plugins/
* disabled undo file, just my preference. 
* config additional settings found at lua/config/keymap.lua and lua/config/options.lua
* auto serves godot external editor. just start nvim in root godot project dir and add these setings to your godot options.
* godot external editor settings

/opt/nvim-linux64/bin/nvim
--server /tmp/godot.pipe --remote-send "<C-\><C-N>:n {file}<CR>{line}G{col}|" 

# Gitlab
ignored gitlab cred file located at root ./.gitlab.nvim
with these vars..
```
export GITLAB_TOKEN="your_gitlab_token"
export GITLAB_URL="https://my-personal-gitlab-instance.com/"
```
```


