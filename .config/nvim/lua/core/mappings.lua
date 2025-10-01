local function map(m, k, v)
	vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

-- set leader
map("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- general mappings
map("", "<C-c>", "<Esc>") -- map new escape key
map("n", "<leader>d", ":NvimTreeToggle<CR>") -- open file explorer
map("n", "<leader>?", 
	function() require("which-key").show({ global = false }) end) -- show buffer local keymaps
map("", "<leader>w", ":w<CR>") -- write file
map("", "<leader>q", ":q<CR>") -- close file
map("", "<leader>Q", ":q!<CR>") -- close file without saving
map('n', '<leader>t', '<CMD>lua require("FTerm").toggle()<CR>') -- open floating terminal
map('t', '<leader>t', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>') -- close floating terminal

-- search-replace mappings
map('n', '<leader>ros', ':SearchReplaceSingleBufferOpen<CR>')
map('n', '<leader>rom', ':SearchReplaceMultiBufferOpen<CR>')
map('n', '<leader>rss', ':SearchReplaceSingleBufferSelections<CR>')
map('n', '<leader>rsm', ':SearchReplaceMultiBufferSelections<CR>')

-- barbar mappings
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>')
map('n', '<A-.>', '<Cmd>BufferNext<CR>')
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>')
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>')
map('n', '<A-c>', '<Cmd>BufferClose<CR>')
map('n', '<A-C>', '<Cmd>BufferCloseAllButCurrent<CR>')
map('n', '<A-p>',   '<Cmd>BufferPick<CR>')
