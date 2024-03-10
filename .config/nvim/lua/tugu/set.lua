vim.opt.guicursor = ""
vim.opt.cursorline = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 8
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 8
vim.opt.expandtab = false

function legacy_indent()
	vim.opt.shiftwidth = 4
	vim.opt.expandtab = true
end

function default_indent()
	vim.opt.tabstop = 8
	vim.opt.shiftwidth = 8
	vim.opt.expandtab = false
end

vim.api.nvim_create_user_command('Lind', legacy_indent, {})
vim.api.nvim_create_user_command('Dind', default_indent, {})

-- render whitespace
vim.opt.listchars = {
	tab = '› ',
        extends = '⟩',
        precedes = '⟨',
        eol = '↵',
	trail = '·',
}
vim.opt.list = true

vim.opt.autoindent = true
vim.opt.smartindent = false

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "81,101"

