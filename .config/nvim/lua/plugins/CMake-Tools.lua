return {
  "Civitasv/cmake-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("cmake-tools").setup {
      cmake_generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=ON" },
      cmake_compile_commands_options = { action = "soft_link" },
    }

    vim.api.nvim_set_keymap("n", "<leader>cg", ":CMakeGenerate<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>cb", ":CMakeBuild<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>cr", ":CMakeRun<CR>", { noremap = true, silent = true })


  end
}

