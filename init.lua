require('config.options')
require('config.keybinds')
require('config.lazy')
require('scrollEOF').setup({
    enabled = true,
    pattern = '*',
    -- Whether or not scrollEOF should be enabled in insert mode
    insert_mode = true,
    -- Whether or not scrollEOF should be enabled in floating windows
    floating = true,
    -- List of filetypes to disable scrollEOF for.
    disabled_filetypes = { 'terminal' },
    -- List of modes to disable scrollEOF for. see https://neovim.io/doc/user/builtin.html#mode()
    disabled_modes = { },
    -- If set to a number > 1, scrolloff is calculated as floor(window_height / n)
    -- and dynamically updated whenever the window changes.
    -- This ignores your existing global scrolloff value.
    relative_scrolloff = 0,
})
