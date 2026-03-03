return {
    'nvim-treesitter/nvim-treesitter',
    version = false,
    build = ':TSUpdate',
    lazy = false,
    main = "nvim-treesitter.configs",
    opts = {
	ensure_installed = { "lua", "python", "c", "cpp", "csv", "json"},
	auto_install = true,
	highlight = { enable = true },
	autotage = { enable = true },
	indent = { enable = true },
    },
  -- Fallback config to handle edge cases
    config = function(_, opts)
      -- Protective call: If treesitter fails to load, don't crash neovim
    local status_ok, configs = pcall(require, "nvim-treesitter.configs")
    if not status_ok then
	return
    end
    configs.setup(opts)
  end,
}




--[[
  config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
	  highlight = { enable = true },
	  indent = { enable = true },
	  autotage = { enable = true },
	  ensure_installed = { 
	      "c",
	      "lua",
	  },
	  auto_install = false,
      })
  end
} ]]
