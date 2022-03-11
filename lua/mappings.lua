vim.g.mapleader = "'"

local function noremap(mode, shorcut, command)
    vim.api.nvim_set_keymap(mode, shorcut, command, { noremap = true })
end

local function nnoremap(shortcut, command)
    noremap("n", shortcut, command)
end

local function vnoremap(shortcut, command)
    noremap("v", shortcut, command)
end

nnoremap('<C-A>', '^')
nnoremap('<C-S>', '$')
vnoremap('<Leader>y', '"+y')
nnoremap('<Leader>p', '"+p')
nnoremap('<Leader>s', ':w<CR>')
nnoremap('<Leader>S', ':wa<CR>')
nnoremap('<Leader>Q', ":wa<CR>:qa<CR>")
nnoremap('<Leader>1', ":NvimTreeToggle<CR>")
nnoremap('<Leader>v', ":NvimTreeFindFile<CR>")
nnoremap('g1', ":NvimTreeFocus<CR>")

nnoremap('<C-[>', '<C-I>')
nnoremap('<C-O>', '<C-T>')
nnoremap('<C-P>', '<C-O>')

-- highlight
nnoremap('n', ':set hlsearch<cr>n')
nnoremap('N', ':set hlsearch<cr>N')
nnoremap('/', ':set hlsearch<cr>/')
nnoremap('?', ':set hlsearch<cr>?')
nnoremap('*', '*:set hlsearch<cr>')
nnoremap('gm', ':set nohlsearch<cr>')

-- fzf
nnoremap('<Leader>p', ':Files<CR>')
nnoremap('<Leader>b', ':Buffers<CR>')
nnoremap('gf', ':Rg <C-R><C-W><CR>')