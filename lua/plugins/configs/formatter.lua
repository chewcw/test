local options = {
  filetype = {
    lua = {
      require("plugins.configs.formatter.filetypes.lua").stylua,
    },
    python = {
      require("plugins.configs.formatter.filetypes.python").autopep8,
    },
    go = {
      require("plugins.configs.formatter.filetypes.go").gofmt,
      require("plugins.configs.formatter.filetypes.go").goimports,
    },
    javascript = {
      require("plugins.configs.formatter.filetypes.javascript").prettier,
      require("plugins.configs.formatter.filetypes.javascriptreact").prettier,
    },
    typescript = {
      require("plugins.configs.formatter.filetypes.typescript").tsfmt,
      require("plugins.configs.formatter.filetypes.typescriptreact").tsfmt,
    },
    css = {
      require("plugins.configs.formatter.filetypes.css").cssbeautify(),
    },
    html = {
      require("plugins.configs.formatter.filetypes.html").prettier,
    },
    rust = {
      require("plugins.configs.formatter.filetypes.rust").rustfmt,
    },
    cs = {
      require("plugins.configs.formatter.filetypes.cs").dotnetformat,
    },
    markdown = {
      require("plugins.configs.formatter.filetypes.markdown").prettier,
    },
    json = {
      require("plugins.configs.formatter.filetypes.json").prettier,
    },
    ["*"] = {
      require("plugins.configs.formatter.filetypes.any").remove_trailing_whitespace,
    },
  },
}

return options
