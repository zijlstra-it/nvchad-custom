return {
  size = function(term)
    if term.direction == "horizontal" then
      return vim.o.lines * 0.4
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.5
    end
  end,
  open_mapping = [[<c-\>]],
  hide_numbers = true,
  shade_terminals = false,
  insert_mappings = true,
  persist_size = true,
  direction = "float",
  close_on_exit = true,
  shell = vim.o.shell,
  autochdir = true,
  highlights = {
    NormalFloat = {
      link = "Normal",
    },
    FloatBorder = {
      link = "FloatBorder",
    },
  },
  float_opts = {
    border = "rounded",
    height = function()
      return math.floor(vim.o.lines * 0.8)
    end,
    width = function()
      return math.floor(vim.o.columns * 0.8)
    end,
    winblend = 0,
  },
}
