local telescope = require('telescope')
telescope.setup {
	defaults = {
		layout_strategy = "vertical",
		layout_config = {
			vertical = {
				preview_height = 0.7,
			},
		},
	},
	pickers = {
		find_files = {
			hidden = true,
		},
	},
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pg', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set('n', '<leader>vws', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>if', builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<leader>igs', builtin.git_status, {})
vim.keymap.set('n', '<leader>igc', builtin.git_bcommits, {})
