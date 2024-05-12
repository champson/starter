-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.mapleader = " "
vim.g.maplocalleader = ";"

local opt = vim.opt

opt.relativenumber = false -- Relative line numbers
opt.grepprg = "rg --vimgrep  --hidden --smart-case --"
opt.diffopt = "filler,iwhite,internal,linematch:60,algorithm:patience"
opt.backupskip = "/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*/shm/*,/private/var/*,.vault.vim"
opt.fileformats = "unix,mac,dos"
opt.foldenable = true
opt.foldlevelstart = 99
opt.shada = "!,'500,<50,@100,s10,h"
opt.linebreak = true
opt.showbreak = "↳  "
opt.breakat = [[\ \	;:,!?]]
opt.breakindentopt = "shift:2,min:20"
opt.listchars = "tab:»·,nbsp:+,trail:·,extends:→,precedes:←"
opt.wildignore =
  ".git,.hg,.svn,*.pyc,*.o,*.out,*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store,**/node_modules/**,**/bower_modules/**"
opt.wildignorecase = true
opt.gcr = "a:block-blinkon0"

vim.g.lazyvim_python_ruff = "ruff"
