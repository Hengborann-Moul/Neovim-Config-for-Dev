vim.g.mapleader = ' '
local keymap = vim.keymap

-- Silent Keymap Option
local opts = { silent = true }

keymap.set('n', '<leader>q', '<cmd>q<cr>')
keymap.set('n', '<leader>w', '<cmd>w<cr>')
keymap.set('n', '<leader>x', '<cmd>x<cr>')

keymap.set('n', '<c-a>', 'gg<S-v>G')

keymap.set('n', '<leader>s', ':vsplit<Return><C-w>w', opts)

keymap.set('n', 'H', '^')
keymap.set('n', 'L', '$')

-- Tree Explorer
keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>')

-- Better window navigation
keymap.set("n", "<C-h>", "<C-w>h", opts)
keymap.set("n", "<C-j>", "<C-w>j", opts)
keymap.set("n", "<C-k>", "<C-w>k", opts)
keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Format
keymap.set("n", "<leader>l", "<cmd>lua vim.lsp.buf.format({ async = false })<cr>", opts)

function RangeFormatting()
  vim.lsp.buf.format({
    async = true,
    range = {
      ["start"] = vim.api.nvim_buf_get_mark(0, "<"),
      ["end"] = vim.api.nvim_buf_get_mark(0, ">"),
    }
  })
end

keymap.set("v", "<leader>l", "<Esc><cmd>lua RangeFormatting()<CR>", { noremap = true })

-- ToggleTerm
keymap.set('n', '<leader>tt', '<cmd>ToggleTerm<cr>')
