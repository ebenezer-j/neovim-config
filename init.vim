:set encoding=UTF-8
:set number
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set autoindent
:set smartindent
:set expandtab 
:set nocompatible
let &guifont = 'FiraCode Nerd Font'
:set noswapfile
:set nobackup
:syntax on
:set nocompatible
:set encoding=UTF-8
:filetype plugin on
:filetype indent on
:syntax enable
:set completeopt-=preview

" ========== Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.

if has('persistent_undo')
  :silent !mkdir ~/.vim/backups > /dev/null 2>&1
  :set undodir=~/.vim/backups
  :set undofile
endif

call plug#begin()

" Vim Configuration
Plug 'onsails/lspkind-nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-surround' " Surrounding ysw)
" Plug 'hrsh7th/cmp-nvim-lsp'

" Color Configuration
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }

" NerdTree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Commenting gcc & ge
Plug 'tpope/vim-commentary'

"Status Bar - Airline
Plug 'vim-airline/vim-airline'
Plug 'enricobacis/vim-airline-clock'

" Color Preview
Plug 'ap/vim-css-color'

" ColorScheme
Plug 'rafi/awesome-vim-colorschemes' " Retro Scheme

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Icons
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'preservim/tagbar' " Tagbar for code navigation
Plug 'lambdalisue/suda.vim/' " Sudo
Plug 'tribela/vim-transparent'
Plug 'alvan/vim-closetag'
Plug 'mbbill/undotree' " Undo Mapper 

Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'


Plug 'sheerun/vim-polyglot'

Plug 'neovim/nvim-lspconfig'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'MunifTanjim/prettier.nvim'

" Plug 'prettier/vim-prettier', {
"   \ 'do': 'yarn install --frozen-lockfile --production',
"   \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }"Prettier

" Vim Terminal
Plug 'tc50cal/vim-terminal' 

" Flutter
" Plug 'thosakwe/vim-flutter'

" Git
Plug 'tpope/vim-fugitive'

" Javascript 
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'kchmck/vim-coffee-script'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'natebosch/dartlang-snippets'


call plug#end()

    if exists('+termguicolors')
      let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
      let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
      set termguicolors
    endif

:colorscheme spaceduck
:set background=dark


lua << EOF
  require("nvim-autopairs").setup {}
  require('telescope').setup{ defaults = { file_ignore_patterns = {"node_modules","build","*.log"} } }
EOF

autocmd FocusLost * silent! wa

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:airline_section_b = '%{strftime("Time: %H:%M:%S")}'

:source ~/.config/nvim/plugged/coc.vim
:source ~/.config/nvim/plugged/nerdtree.vim
:source ~/.config/nvim/plugged/tagbar.vim
:source ~/.config/nvim/plugged/vim-fugitive.vim
:source ~/.config/nvim/plugged/vim-jsv.vim
:source ~/.config/nvim/plugged/undotreee.vim
:source ~/.config/nvim/fonts.vim
:source ~/.config/nvim/splits.vim
:source ~/.config/nvim/tabs.vim
:source ~/.config/nvim/plugged/vim-lsc.vim
:source ~/.config/nvim/plugged/vim-indent-guide.vim
:source ~/.config/nvim/plugged/telescope.vim

let g:python_host_prog="/usr/bin/python3"

