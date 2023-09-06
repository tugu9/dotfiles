local hop = require('hop')

local directions = require('hop.hint').HintDirection
vim.keymap.set('n', 'f', function()
    hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, { remap = true })
vim.keymap.set('n', 'F', function()
    hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, { remap = true })
vim.keymap.set('n', 't', function()
    hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, { remap = true })
vim.keymap.set('n', 'T', function()
    hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, { remap = true })

vim.keymap.set('n', '<leader>f', function()
    hop.hint_char1({ direction = directions.AFTER_CURSOR })
end, { remap = true })
vim.keymap.set('n', '<leader>F', function()
    hop.hint_char1({ direction = directions.BEFORE_CURSOR })
end, { remap = true })
vim.keymap.set('n', '<leader>s', function()
    hop.hint_char1() end, { remap = true })

vim.keymap.set('n', '<leader>j', function() hop.hint_lines_skip_whitespace() end, { remap = true })
vim.keymap.set('n', '<leader>k', function() hop.hint_lines_skip_whitespace() end, { remap = true })

vim.keymap.set('n', '<leader>/', function() hop.hint_patterns() end, { remap = true })

