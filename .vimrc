
runtime! archlinux.vim

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
   
" unicode symbols
let g:airline_left_sep = ''
let g:airline_right_sep = ''

let g:airline_theme='base16_gruvbox_dark_hard'


call plug#begin('~/.vim/plugged')

" enable file view
let g:airline#extensions#tabline#enabled = 1

" Make sure you use single quotes

" auto complete and intelli sense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" custom launch screen
Plug 'mhinz/vim-startify'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'https://github.com/preservim/nerdtree'

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'morhetz/gruvbox'

colorscheme gruvbox
let g:airline_theme='gruvbox'

" Initialize plugin system
call plug#end()

set mouse=a
inoremap <silent><expr> <S-Tab> coc#refresh()

nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>
