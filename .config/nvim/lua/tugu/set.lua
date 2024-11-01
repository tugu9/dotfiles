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

vim.g["diagnostics_active"] = true
function toggle_diagnostics()
    if vim.g.diagnostics_active then
        vim.g.diagnostics_active = false
        vim.diagnostic.disable()
    else
        vim.g.diagnostics_active = true
        vim.diagnostic.enable()
    end
end

vim.api.nvim_create_user_command('Diag', toggle_diagnostics, {})

-- render whitespace
vim.opt.listchars = {
	tab = '› ',
        extends = '⟩',
        precedes = '⟨',
        eol = '↵',
	trail = '·',
}
vim.opt.list = true

-- vim.opt.autoindent = true
-- vim.opt.smartindent = false

-- try to cinindent the linux kernel style
vim.opt.autoindent = false
vim.opt.cindent = true
vim.opt.cinoptions = ":0,t0,(0"
vim.opt.textwidth = 80

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

-- For the auto ctag regeneration on file save
-- local group = vim.api.nvim_create_augroup("CscopeBuild", { clear = true })
-- vim.api.nvim_create_autocmd("BufWritePost", {
--   pattern = { "*.c", "*.h" },
--   callback = function ()
--     vim.cmd("Cscope db build")
--   end,
--   group = group,
-- })
