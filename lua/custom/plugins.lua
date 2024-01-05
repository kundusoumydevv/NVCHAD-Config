local plugins = {
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts= function ()
      return require "custom.configs.null-ls"
      
    end
  },
  {
    "vim-crystal/vim-crystal",
    ft = "crystal",
    config = function (_)
      vim.g.crystal_auto_format =1
      
    end,
  },

  {
    "neovim/nvim-lspconfig" ,
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
      
    end
  },
  {
    "williamboman/mason.nvim",

    opts = {
      ensure_installed = {
        "rust-analyzer",
        "clangd",
        "clang-format",
      },
    },
  }

}
return plugins
