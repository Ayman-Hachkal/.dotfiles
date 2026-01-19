return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "jdtls", "basedpyright", "glsl_analyzer"},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- lua_ls
      vim.lsp.config("lua_ls", {
        capabilities = capabilities,
      })
      vim.lsp.enable({"lua_ls"})
      -- java  
      --
      vim.lsp.config("jdtls", {
        capabilities = capabilities,
      })
      vim.lsp.enable({"jdtls"})
      pyright = vim.lsp.config("basedpyright", {
        capabilities = capabilities,
        settings = {
                basedpyright = {
                    reportMissingTypeStubs = false,
                    analysis = {
                        typeCheckingMode = "standard",      -- less strict type checking
                        diagnosticMode = "openFilesOnly",-- only report warnings in open files
                        useLibraryCodeForTypes = true,  -- ignore types from libraries to reduce false positives
                        autoSearchPaths = true, -- Autolooks through venv path
                        inlayHints = {
                            variableTypes = true,
                            functionReturnTypes = true,
                            callArgumentNames = true,
                        },
                    },
                },
            },
        })
      vim.lsp.enable({"basedpyright"})
      
      --clangd 
      vim.lsp.config("clangd", {
        capabilities = capabilities,
      })
       
      vim.lsp.enable({"clangd"})

      vim.lsp.config("glsl_analyzer", {
        capabilities = capabilities,
      })

      vim.lsp.enable({"glsl_analyzer"})

      -- keybinds
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      vim.diagnostic.config({ virtual_text = false, virtual_text= { current_line = true }, })

		end,
	},
}
