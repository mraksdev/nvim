local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({
		'git', 'clone', '--depth', '1',
		'https://github.com/wbthomason/packer.nvim', install_path
	})
	vim.cmd 'packadd packer.nvim'
end

return require('packer').startup(function()
	-- Packer can handle itslef
	use 'wbthomason/packer.nvim'
	-- Gruvbox colorscheme
	use 'gruvbox-community/gruvbox'
	-- Usefull notes vim app
	use 'vimwiki/vimwiki'
	-- File browser NvimTree
	use {'kyazdani42/nvim-tree.lua',requires = 'kyazdani42/nvim-web-devicons'}
	-- BufferLine
	use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
	-- LSP, autocompile etc.
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-compe'
	use 'hrsh7th/vim-vsnip'
end)
