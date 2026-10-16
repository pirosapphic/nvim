return{ 'Bekaboo/deadcolumn.nvim' ,
config = function()
    require('deadcolumn').setup({
        scope = 'line', ---@type string|fun(): integer
        ---@type string[]|boolean|fun(mode: string): boolean
        modes = function(mode)
            return mode:find('^[iRss\x13]') ~= nil
        end,
        blending = {
            threshold = 79,
            colorcode = '#1e1e2e',
            --hlgroup = { 'Error', 'bg' },
        },
        warning = {
            alpha = 1,
            offset = 3,
            colorcode = '#f38ba8',
            --hlgroup = { 'Error', 'bg' },
        },
        extra = {
            ---@type string?
            follow_tw = nil,
        },
    })
end
}
