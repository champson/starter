-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

map("n", "nw", "<C-w><C-w>", { desc = "Go to Next Window", remap = true })

map("n", "<localleader>bp", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<localleader>bn", "<cmd>bnext<cr>", { desc = "Prev Buffer" })
map("n", "<localleader>1", "<cmd>BufferLineGoToBuffer 1<cr>", { desc = "Switch to Buffer 1" })
map("n", "<localleader>2", "<cmd>BufferLineGoToBuffer 2<cr>", { desc = "Switch to Buffer 2" })
map("n", "<localleader>3", "<cmd>BufferLineGoToBuffer 3<cr>", { desc = "Switch to Buffer 3" })
map("n", "<localleader>4", "<cmd>BufferLineGoToBuffer 4<cr>", { desc = "Switch to Buffer 4" })
map("n", "<localleader>5", "<cmd>BufferLineGoToBuffer 5<cr>", { desc = "Switch to Buffer 5" })
map("n", "<localleader>6", "<cmd>BufferLineGoToBuffer 6<cr>", { desc = "Switch to Buffer 6" })
map("n", "<localleader>7", "<cmd>BufferLineGoToBuffer 7<cr>", { desc = "Switch to Buffer 7" })
map("n", "<localleader>8", "<cmd>BufferLineGoToBuffer 8<cr>", { desc = "Switch to Buffer 8" })
map("n", "<localleader>9", "<cmd>BufferLineGoToBuffer 9<cr>", { desc = "Switch to Buffer 9" })
map("n", "<C-n>", "<cmd>Telescope oldfiles<cr>", { remap = true, desc = "Recent" })
map("n", "<localleader>sP", LazyVim.pick("live_grep"), { remap = true, desc = "Grep (Root Dir)" })
-- stylua: ignore
map("n", "<leader>n", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", { remap = true, desc = "Switch Buffer" })
-- stylua: ignore
map("n", "<localleader>sp", LazyVim.pick("grep_string", { word_match = "-w" }), { remap = true, desc = "Word (Root Dir)" })

map("n", "<localleader>q", "<cmd>:q<cr>", { desc = "Quit" })
map("n", "<localleader>Q", "<cmd>:q!<cr>", { desc = "Force Quit" })
map("n", "<localleader>w", "<cmd>:w<cr>", { desc = "Save Buffer" })
map("n", "<localleader>W", "<cmd>:waq<cr>", { remap = true, desc = "Save Buffer and Quit" })
map("n", "<C-p>", LazyVim.pick("files"), { remap = true, desc = "Find Files (Root Dir)" })

map("n", "<localleader>cc", MiniComment.operator() .. "_", { remap = true, desc = "Comment Line" })
map(
  "n",
  "<localleader>sw",
  "<cmd>ClangdSwitchSourceHeader<cr>",
  { remap = true, desc = "Switch Source/Header (C/C++)" }
)
