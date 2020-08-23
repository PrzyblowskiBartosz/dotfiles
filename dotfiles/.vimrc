set nocompatible              " be iMproved, required
filetype off                  " required

set number

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'preservim/nerdtree'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] |	elseif argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | elseif argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'

Plugin 'garbas/vim-snipmate'
let g:airline#extensions#tabline#enabled = 1

Plugin 'w0rp/ale'
let b:ale_fixers = ['eslint']
let g:ale_fix_on_save = 1

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'othree/yajs.vim'
Plugin 'pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1

Plugin 'mxw/vim-jsx'
let g:jsx_pragma_required = 1

Plugin 'severin-lemaignan/vim-minimap'


Plugin 'prettier/vim-prettier'
Plugin 'grvcoelho/vim-javascript-snippets'
" FORMATTERS
au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType html setlocal formatprg=js-beautify\ --type\ html
au FileType scss setlocal formatprg=prettier\ --parser\ css
au FileType css setlocal formatprg=prettier\ --parser\ css

imap <C-J> <esc>a<Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger

Plugin 'jiangmiao/auto-pairs'

Plugin 'sonph/onehalf', {'rtp': 'vim/'}
set termguicolors
colorscheme codedark
let g:airline_theme='onehalfdark'

call vundle#end()            " required
filetype plugin indent on    " required
