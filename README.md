# 💤 DEDLazyVim for even the lazier

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim)
includes installers for debian based linux distros, working ulitsnips, lazygit, lsp

![alt text](https://github.com/dfosterj/dedneovim/blob/main/.preview.png?raw=true)


# TODO
Fix Gitlab integration
Fix toggleterm overtaking godot remote send

# Dependencies
neovim-cmp
python3-pynvim
gh cli v2 (gh dash)
remove any instance of neovim
run installers found ./installers


# Addtional info
* colorschemes found at lua/plugins/
* disabled undo file, just my preference. 
* config additional settings found at lua/config/keymap.lua and lua/config/options.lua


# Helpful quick start keybindings
* leader is default space key and this maintains most default lazyvim keyboard shortcuts besides below
* fuzzy finder space+f
* ulitsnips edit space+u+e
* toggle errors and warnings space+l+x

# LazyGit
* no custom settings, all default options


# Gitlab
configure the envvars
export GITLAB_TOKEN="your_gitlab_token"
export GITLAB_URL="https://my-personal-gitlab-instance.com/"
shortcuts found in lua/plugins/gitlab.lua

# Github
* setup github ssh in your terminal
* breakout commands using toggle term
* create pull request via gh create pr:
leader+prr

* merge review and commit via gh dash / toggleterm float:
leader+prc

# Godot
* auto serves godot external editor. Just start nvim in root godot project dir and add these settings to your godot options.
/opt/nvim-linux64/bin/nvim
--server /tmp/godot.pipe --remote-send "<C-\><C-N>:n {file}<CR>{line}G{col}|" 

# ToggleTerm
* split horizontal
leader+tt

* split vertical
leader+tv

* float
leader+tT

* crtl + vim commands dirctions for navigation
