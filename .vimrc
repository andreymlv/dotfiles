call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'morhetz/gruvbox'
Plug 'ycm-core/YouCompleteMe'
Plug 'rdnetto/YCM-Generator'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'jiangmiao/auto-pairs'

call plug#end()

let g:ycm_confirm_extra_conf = 0

set pastetoggle=<F2>


" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
						\ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
autocmd BufWinEnter * silent NERDTreeMirror

let NERDTreeMinimalUI=1

nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>


" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

autocmd vimenter * ++nested colorscheme gruvbox
set background=dark    " Setting dark mode

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
