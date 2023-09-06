require('gitsigns').setup()
local gitsigns = require('gitsigns')

vim.cmd ":highlight GitSignsAdd guibg=NONE"
vim.cmd ":highlight GitSignsChange guibg=NONE"
vim.cmd ":highlight GitSignsDelete guibg=NONE"

vim.keymap.set('n', '<leader>gd', function()
    gitsigns.diffthis() end, { remap = true })
