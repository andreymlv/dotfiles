call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'ycm-core/YouCompleteMe'
Plug 'rdnetto/YCM-Generator'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'jiangmiao/auto-pairs'

call plug#end()

let g:airline#extensions#tabline#enabled = 1

let g:ycm_confirm_extra_conf = 0

set pastetoggle=<F2>

set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab

let NERDTreeMinimalUI=1



" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Enable mouse in all modes
set mouse=a

set number

set hlsearch

" Enhance command-line completion
set wildmenu

" Optimize for fast terminal connections
set ttyfast

" Use UTF-8 without BOM
set encoding=utf-8
