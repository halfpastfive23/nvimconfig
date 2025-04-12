return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("rose-pine").setup({
				variant = "auto", -- options: auto, main, moon, or dawn
				dark_variant = "main", -- options: main, moon, or dawn
				dim_inactive_windows = false,
				extend_background_behind_borders = true,

				enable = {
					terminal = true,
					legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
					migrations = true, -- Handle deprecated options automatically
				},

				styles = {
					bold = true,
					italic = true,
					transparency = false,
				},

				groups = {
					border = "muted",
					link = "iris",
					panel = "surface",

					error = "love",
					hint = "iris",
					info = "foam",
					note = "pine",
					todo = "rose",
					warn = "gold",

					git_add = "foam",
					git_change = "rose",
					git_delete = "love",
					git_dirty = "rose",
					git_ignore = "muted",
					git_merge = "iris",
					git_rename = "pine",
					git_stage = "iris",
					git_text = "rose",
					git_untracked = "subtle",

					h1 = "iris",
					h2 = "foam",
					h3 = "rose",
					h4 = "gold",
					h5 = "pine",
					h6 = "foam",
				},

				palette = {
					-- Optionally override palette per variant
					--main = {
					--		base = "#243642", -- A dark purple color
					-- 	overlay = '#363738',
					--		},
				},

				highlight_groups = {
					-- Customize highlight groups (optional)
					-- Comment = { fg = "foam" },
					-- VertSplit = { fg = "muted", bg = "muted" },
				},

				before_highlight = function(group, highlight, palette)
					-- Disable undercurls or modify highlights (optional)
					-- if highlight.undercurl then
					--     highlight.undercurl = false
					-- end
				end,
			})

			-- Load the rose-pine colorscheme
			vim.cmd("colorscheme rose-pine")
		end,
	},
}
