
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- wrap the operators onto the newline after wrapping
-- vim.keymap.set("n", "gqq", [[gqq|:s/\s*\([&|]\)\([&|]\)\n\(\s*\)/\r\3\1\2\ /ge<CR>|==|:noh<CR>]])
vim.keymap.set("v", "gq", [[gq|gv|:s/\s*\([&|]\)\([&|]\)\n\(\s*\)/\r\3\1\2\ /ge<CR>|gv|=|:noh<CR>]])
-- vim.keymap.set("n", "==", [[==|:s/\s*\([&|]\)\([&|]\)\n\(\s*\)/\r\3\1\2\ /ge<CR>|==|:noh<CR>]])
vim.keymap.set("v", "=", [[=|gv|:s/\s*\([&|]\)\([&|]\)\n\(\s*\)/\r\3\1\2\ /ge<CR>|gv|=|:noh<CR>]])


vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- vim.keymap.set("n", "<leader>vwm", function()
--     require("vim-with-me").StartVimWithMe()
-- end)
-- vim.keymap.set("n", "<leader>svwm", function()
--     require("vim-with-me").StopVimWithMe()
-- end)

-- map U to redo
vim.keymap.set("n", "U", "<C-r>")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
--vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- tab nav
vim.keymap.set("n", "<A-,>", "<cmd>tabprevious<CR>")
vim.keymap.set("n", "<A-.>", "<cmd>tabnext<CR>")

vim.keymap.set("n", "d/", function()
    vim.cmd("noh")
end)

vim.keymap.set("n", "tt", function()
    vim.cmd("tab split")
end)
vim.keymap.set("n", "tq", function()
    vim.cmd("tabclose")
end)
vim.keymap.set("n", "<leader>q", function()
    vim.cmd("quit")
end)

vim.keymap.set("n", "<leader>w", "gqq")

-- vim.keymap.set("n", "<leader><leader>", function()
--     vim.cmd("so")
-- end)

