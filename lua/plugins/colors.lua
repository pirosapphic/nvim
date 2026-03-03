local function enable_transparency()
    vim.api.nvim_set_hl(0,"Normal", { bg = "none" })
end
return {
    {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,

	config = function()
	    require("catppuccin").setup({
		transparent_background = true,
	    })
	    vim.cmd.colorscheme "catppuccin-mocha"
	    --enable_transparency()
	end
    },
    {
	"nvim-lualine/lualine.nvim",
	dependencies = {
	    "nvim-tree/nvim-web-devicons"
	},
	opts = {
	    theme = 'catppuccin-mocha',
	}
    },
}
