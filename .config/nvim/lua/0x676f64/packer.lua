vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)

	--packer can manage itself
	use 'wbthomason/packer.nvim'

use {
	'nvim-telescope/telescope.nvim', tag = '0.1.1',
	-- or                            , branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }
}
use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
use("nvim-treesitter/nvim-treesitter-context");
use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
use ('ThePrimeagen/harpoon')
use('mbbill/undotree')
use('tpope/vim-fugitive')
use('itspriddle/vim-themes')
use ('nvim-lualine/lualine.nvim')
use ('onsails/lspkind-nvim')
use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
				vim.cmd('colorscheme rose-pine')
			end
		})
use ('nvim-tree/nvim-web-devicons')
use ('ThePrimeagen/refactoring.nvim')
use('barrett-ruth/live-server.nvim')
use 'rcarriga/nvim-notify'
use 'rktjmp/lush.nvim'
use "lukas-reineke/indent-blankline.nvim"
use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
use ('monkoose/matchparen.nvim')
use 'sheerun/vim-polyglot'
use {'prettier/vim-prettier', run = 'yarn install'}
use('nvim-tree/nvim-tree.lua')
use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

end)

