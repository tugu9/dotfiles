require('catppuccin').setup({
	transparent_background = true,
	integrations = {
		cmp = true,
		gitsigns = true,
		nvimtree = true,
		treesitter = true,
		harpoon = true,
	},
	custom_highlights = function(colors)
		return {
			LineNr = { fg = colors.overlay0 },
			WhiteSpace = { fg = colors.overlay0 },
			NonText = { fg = colors.overlay0 },
			StatusLine = { bg = colors.lavender, fg = colors.crust },
			StatusLineNC = { bg = colors.base, fg = colors.text },
			Pmenu = { bg = colors.base },
		}
	end
})

function ColorMyPencils(color)
	color = color or "catppuccin-frappe"
	vim.cmd.colorscheme(color)
end

ColorMyPencils()

