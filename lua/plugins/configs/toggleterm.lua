local options = {
  size = function(term)
    if term.direction == "horizontal" then
      return 15
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
  start_in_insert = true,
  insert_mappings = true,
  terminal_mappings = true,
  winbar = {
    enabled = true,
    name_formatter = function(term)
      return  term.name
    end,
  },
}

return options
