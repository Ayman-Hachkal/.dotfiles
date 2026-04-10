return {
  "nvim-treesitter/nvim-treesitter",
  "tree-sitter/tree-sitter-html",
  build = ":TSUpdate",
  config = function()
      require("nvim-treesitter.configs").setup({
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
  end
}
