require('gitsigns').setup()
local gitsigns = require('gitsigns')

vim.cmd ":highlight GitSignsAdd guibg=NONE"
vim.cmd ":highlight GitSignsChange guibg=NONE"
vim.cmd ":highlight GitSignsDelete guibg=NONE"

vim.keymap.set('n', '<leader>gd', function()
    gitsigns.diffthis() end, { remap = true })

vim.keymap.set('n', '<leader>gp', function()
    gitsigns.preview_hunk() end, { remap = true })

vim.keymap.set('n', '<leader>gb', function()
    gitsigns.blame_line() end, { remap = true })

vim.keymap.set('n', '<leader>gr', function()
    gitsigns.reset_hunk() end, { remap = true })

