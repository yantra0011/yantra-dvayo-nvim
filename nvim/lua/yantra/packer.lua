-- Bootstrap Packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd("packadd packer.nvim")
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Load Packer
vim.cmd([[packadd packer.nvim]])

-- Plugin setup
return require("packer").startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  -- Telescope (Fuzzy Finder)
  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    requires = { "nvim-lua/plenary.nvim" }
  })

  -- Gruvbox Theme
  use({
    "morhetz/gruvbox",
    config = function()
      vim.cmd("colorscheme gruvbox")
      vim.g.gruvbox_contrast_dark = "hard" -- Options: "soft", "medium", "hard"
      vim.g.gruvbox_invert_selection = 0
      vim.g.gruvbox_bold = 1
      vim.g.gruvbox_italic = 1

      -- Make background fully transparent
      vim.cmd([[
        hi Normal guibg=NONE ctermbg=NONE
        hi NormalNC guibg=NONE ctermbg=NONE
        hi EndOfBuffer guibg=NONE ctermbg=NONE
        hi SignColumn guibg=NONE ctermbg=NONE
        hi LineNr guibg=NONE ctermbg=NONE
        hi CursorLine guibg=NONE ctermbg=NONE
        hi CursorLineNr guibg=NONE ctermbg=NONE
        hi StatusLine guibg=NONE ctermbg=NONE
        hi StatusLineNC guibg=NONE ctermbg=NONE
        hi VertSplit guibg=NONE ctermbg=NONE
        hi Folded guibg=NONE ctermbg=NONE
        hi Pmenu guibg=NONE ctermbg=NONE
      ]])
    end
  })

  -- Automatically set up configuration after cloning packer.nvim
  if packer_bootstrap then
    require("packer").sync()
  end

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use('nvim-treesitter/playground')

  use('ThePrimeagen/harpoon')

  use('mbbill/undotree')

  use('tpope/vim-fugitive')

  use {'williamboman/mason.nvim'}  -- LSP Manager
  use {'williamboman/mason-lspconfig.nvim'} -- Bridge for Mason & LSPConfig
  use {'neovim/nvim-lspconfig'}  -- LSP configuration
  use {'hrsh7th/nvim-cmp'}  -- Autocompletion
  use {'hrsh7th/cmp-nvim-lsp'}  -- LSP source for nvim-cmp
  use {'L3MON4D3/LuaSnip'}  -- Snippet engine
  use {'saadparwaiz1/cmp_luasnip'}  -- Snippet completion

  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('alpha').setup(require('alpha.themes.dashboard').config)
    end
     }
  use({
  "tadmccorkle/markdown.nvim",
  config = function()
    require("markdown").setup({
      -- configuration here or empty for defaults
    })
  end,
})


end)

