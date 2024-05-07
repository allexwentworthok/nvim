-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap -- for consistency

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "ss", ":split<Return><C-w>w", { desc = "Split window horizontally and move to it", silent = true })
map("n", "sv", ":vsplit<Return><C-w>w", { desc = "Split window vertically and move to it", silent = true })

map("v", "J", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("v", "K", "<cmd>m .-2<cr>==", { desc = "Move up" })

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("i", "kj", "<ESC>", { desc = "Exit insert mode with kj" })
