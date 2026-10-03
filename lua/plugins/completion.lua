return {
	"saghen/blink.cmp",
	dependencies = {
		"L3MON4D3/LuaSnip",
		"rafamadriz/friendly-snippets",
		"onsails/lspkind.nvim",
	},
	version = "1.*",
	config = function()
		require("luasnip.loaders.from_vscode").lazy_load()

		require("blink.cmp").setup({
			keymap = { preset = "super-tab" },

			appearance = {
				nerd_font_variant = "mono",
			},

			completion = {
				menu = {
					draw = {
						components = {
							kind_icon = {
								text = function(ctx)
									local kind_icon, _, _ = require("lspkind").symbolic(ctx.kind, { mode = "symbol" })
									return kind_icon
								end,
							},
						},
					},
				},
				documentation = {
					auto_show = true,
				},
			},

			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},

			snippets = { preset = "luasnip" },

			signature = { enabled = true },
		})
	end,
}
