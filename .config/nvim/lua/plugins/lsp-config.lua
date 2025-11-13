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
				ensure_installed = { "lua_ls", "jdtls", "basedpyright" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.jdtls.setup({
				capabilities = capabilities,
			})
      lspconfig.basedpyright.setup({ 
        capabilities = capabilities,
        settings = {
                basedpyright = {
                    analysis = {
                        typeCheckingMode = "basic",      -- less strict type checking
                        diagnosticMode = "openFilesOnly",-- only report warnings in open files
                        useLibraryCodeForTypes = false,  -- ignore types from libraries to reduce false positives
                        inlayHints = {
                            variableTypes = true,
                            functionReturnTypes = true,
                            callArgumentNames = true,
                        },
                    },
                },
            },
      })
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      vim.diagnostic.config({ virtual_text = false, virtual_text= { current_line = true }, })
		end,
	},
}
