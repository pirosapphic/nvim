vim.g.vimtex_compiler_latexmk = {
    aux_dir = "aux", -- create a directory called aux that will contain all the auxiliary files
}
vim.g.vimtex_quickfix_method = 'pplatex'
vim.g.vimtex_quickfix_open_on_warning = 0
vim.g.vimtex_quickfix_autoclose_after_keystrokes = 3

return
{
  "lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = "zathura"
  end
}
