-- vim.g.bufferline = {
--    animations = true,
--    closable = true,
--    icons = true,
--    icon_separator_active = '',
--    icon_separator_inactive = '',
-- }
-- require'barbar'.setup
require('barbar').setup {
    animations = true,
    closable = true,
    icons = { filetype = { enabled = true, }, },
    separator = {left = '▎', right = ''},
    inactive = {button = 'x'},
}
