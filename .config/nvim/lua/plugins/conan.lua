return {
  "mm4cN/nvim-conan",
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("conan").setup()
  end
}
