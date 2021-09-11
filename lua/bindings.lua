-- Key bindings


-- Basic bindings
-- Space as leader key
vim.g.mapleader = ' '

-- Navigation
vim.api.nvim_set_keymap('n','gl','$',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','gh','0',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','gk','H',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','gj','L',{noremap=true,silent=true})

-- Splits
vim.api.nvim_set_keymap('n','<leader>h',':split<space>',{noremap=true,silent=false})
vim.api.nvim_set_keymap('n','<leader>v',':vsplit<space>',{noremap=true,silent=false})

-- Split navigatioin
vim.api.nvim_set_keymap('n','<c-h>','<c-w>h',{silent=true})
vim.api.nvim_set_keymap('n','<c-j>','<c-w>j',{silent=true})
vim.api.nvim_set_keymap('n','<c-k>','<c-w>k',{silent=true})
vim.api.nvim_set_keymap('n','<c-l>','<c-w>l',{silent=true})

-- Save file
vim.api.nvim_set_keymap('n','<leader>sf',':w<cr>',{noremap=true,silent=false})

-- Indenting
vim.api.nvim_set_keymap('v','<a-l>','>gv',{noremap=true,silent=true})
vim.api.nvim_set_keymap('v','<a-h>','<gv',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<a-l>','<s-v>>gv',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<a-h>','<s-v><gv',{noremap=true,silent=true})

-- Moving lines
vim.api.nvim_set_keymap('v','<a-j>',':m \'>+1<cr>gv',{noremap=true,silent=true})
vim.api.nvim_set_keymap('v','<a-k>',':m \'<-2<cr>gv',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<a-j>',':m .+1<cr><s-v>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<a-k>',':m .-2<cr><s-v>',{noremap=true,silent=true})

-- Buffer switch
vim.api.nvim_set_keymap('n','<leader><tab>',':bnext<cr>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader><s-tab>',':bprevious<cr>',{noremap=true,silent=true})


-- Plugins bindings
-- NerdTree
vim.api.nvim_set_keymap('n','<leader>nn',':NvimTreeFocus<cr>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader>nt',':NvimTreeToggle<cr>',{noremap=true,silent=true})

-- Packer
vim.api.nvim_set_keymap('n','<leader>Pi',':PackerInstall<cr>',{noremap=true,silent=false})
vim.api.nvim_set_keymap('n','<leader>Pc',':PackerClean<cr>',{noremap=true,silent=false})
vim.api.nvim_set_keymap('n','<leader>Pu',':PackerUpdate<cr>',{noremap=true,silent=false})
vim.api.nvim_set_keymap('n','<leader>Ps',':PackerStatus<cr>',{noremap=true,silent=false})
