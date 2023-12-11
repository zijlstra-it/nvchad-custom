---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- User custom bindings
M.user = {
  n = {
    -- General
    ["<leader>q"] = { ":quitall <CR>", "Quit All" },

    -- Window Management
    ["<leader>sv"] = { "<C-w>v", "Split window vertically" },
    ["<leader>sh"] = { "<C-w>s", "Split window horizontally" },
    ["<leader>se"] = { "<C-w>=", "Make splits equal size" },
    ["<leader>sx"] = { "<cmd>close<CR>", "Close current split" },

    -- Remap leader-n to "new file"
    ["<leader>n"] = { "<cmd> enew <CR>", "Open new buffer" },

    -- ToggleTerm
    ["<leader>tf"] = { "<cmd>ToggleTerm direction=float<cr>", "Float Terminal", opts = { silent = true } },
    ["<leader>th"] = {
      "<cmd>ToggleTerm direction=horizontal<cr>",
      "Horizontal Terminal",
      opts = { silent = true },
    },
    ["<leader>tv"] = { "<cmd>ToggleTerm direction=vertical<cr>", "Vertical Terminal", opts = { silent = true } },

    -- Git related
    ["<leader>gg"] = {
      function()
        ClickGit()
      end,
      "Lazygit UI",
      opts = { silent = true },
    },
    ["<leader>gc"] = { "<cmd> Telescope git_commits <CR>", "Git commits" },
    ["<leader>gj"] = { "<cmd> lua require 'gitsigns'.next_hunk()<cr>", "Git Next Hunk", opts = { silent = true } },
    ["<leader>gk"] = { "<cmd> lua require 'gitsigns'.prev_hunk()<cr>", "Git Prev Hunk", opts = { silent = true } },
    ["<leader>gb"] = { "<cmd> lua require 'gitsigns'.blame_line()<cr>", "Git Blame", opts = { silent = true } },
    ["<leader>gp"] = { "<cmd> lua require 'gitsigns'.preview_hunk()<cr>", "Git Preview Hunk", opts = { silent = true } },
    ["<leader>gr"] = { "<cmd> lua require 'gitsigns'.reset_hunk()<cr>", "Git Reset Hunk", opts = { silent = true } },
    ["<leader>gR"] = { "<cmd> lua require 'gitsigns'.reset_buffer()<cr>", "Git Reset Buffer", opts = { silent = true } },
    ["<leader>gs"] = { "<cmd> lua require 'gitsigns'.stage_hunk()<cr>", "Git Stage Hunk", opts = { silent = true } },
    ["<leader>gu"] = {
      "<cmd>lua reguire 'gitsigns'.undo_stage_hunk()<cr>",
      "Git Undo Stage Hunk",
      opts = { silent = true },
    },
  },
}

-- Disable certain bindings
M.disabled = {
  i = {
    ["jk"] = "",
  },
}

return M
