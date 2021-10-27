call plug#begin('~/.local/share/nvim/plugged')

Plug 'deoplete-plugins/deoplete-jedi'

Plug 'davidhalter/jedi-vim'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'itchyny/lightline.vim'

Plug 'sainnhe/sonokai'

Plug 'preservim/nerdtree'

Plug 'jeetsukumaran/vim-pythonsense'

Plug 'frazrepo/vim-rainbow'

call plug#end()


" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}


 " Important!!
        if has('termguicolors')
          set termguicolors
        endif
        " The configuration options should be placed before `colorscheme sonokai`.
        let g:sonokai_style = 'espresso'
        let g:sonokai_enable_italic = 1
        let g:sonokai_disable_italic_comment = 1
        
	syntax on
	colorscheme sonokai

" setting up line numbering
set nu

" Rainbow bracket settings
let g:rainbow_active = 1

" setting horizontal and vertical splits
set splitbelow
set splitright

command! -nargs=* T split | terminal <args>

tnoremap <esc><esc> <C-\><C-N>
