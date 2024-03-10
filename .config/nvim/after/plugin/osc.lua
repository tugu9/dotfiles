local osc = require('osc52')
osc.setup {
	max_length = 0,           -- Maximum length of selection (0 for no limit)
	silent = false,           -- Disable message on successful copy
	trim = false,             -- Trim surrounding whitespaces before copy
	tmux_passthrough = true, -- Use tmux passthrough (requires tmux: set -g allow-passthrough on)
}

vim.keymap.set('n', '<leader>y', osc.copy_operator, {expr = true})
vim.keymap.set('n', '<leader>yy', '<leader>c_', {remap = true})
vim.keymap.set('v', '<leader>y', osc.copy_visual)
