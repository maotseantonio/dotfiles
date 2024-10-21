require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Keyboard users
vim.keymap.set("n", "<C-t>", function()
    require("menu").open("default")
  end, {})
  
  -- mouse users + nvimtree users!
  vim.keymap.set("n", "<RightMouse>", function()
    vim.cmd.exec '"normal! \\<RightMouse>"'
  
    local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
    require("menu").open(options, { mouse = true })
  end, {})
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
