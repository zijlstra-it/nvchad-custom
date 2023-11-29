---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- User custom bindings
M.user = {
  n = {
    -- General 
    ["<leader>q"] = {":quitall <CR>", "Quit All"},

    -- Window Management
    ["<leader>sv"] = {"<C-w>v", "Split window vertically" },
    ["<leader>sh"] = {"<C-w>s", "Split window horizontally" },
    ["<leader>se"] = {"<C-w>=", "Make splits equal size" },
    ["<leader>sx"] = {"<cmd>close<CR>", "Close current split" },

    -- Remap leader-n to "new file" 
    ["<leader>n"] = {"<cmd>enew<CR>", "Open new buffer" },

  },
}

-- Disable certain bindings
M.disabled = {
  i = {
    ["jk"] = "",
  },
}

return M

