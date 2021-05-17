" Plugins
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'dracula/vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ap/vim-css-color'

call plug#end()

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" style
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='dracula'

" custom ascii logo
let g:ascii = [
 \ " /$$   /$$                                /$$              ",
 \ "| $$$ | $$                               |__/              ",
 \ "| $$$$| $$  /$$$$$$   /$$$$$$  /$$    /$$ /$$ /$$$$$$/$$$$ ",
 \ "| $$ $$ $$ /$$__  $$ /$$__  $$|  $$  /$$/| $$| $$_  $$_  $$",
 \ "| $$  $$$$| $$$$$$$$| $$  \\ $$ \\  $$/$$/ | $$| $$ \\ $$ \\ $$",
 \ "| $$\\  $$$| $$_____/| $$  | $$  \\  $$$/  | $$| $$ | $$ | $$",
 \ "| $$ \\  $$|  $$$$$$$|  $$$$$$/   \\  $/   | $$| $$ | $$ | $$",
 \ "|__/  \\__/ \\_______/ \\______/     \\_/    |__/|__/ |__/ |__/",
 \ "                                                           "]
let g:startify_custom_header = g:ascii + startify#fortune#boxed()

let g:startify_bookmarks = [
	\ { 'c': '~/.config/nvim/init.vim' },
        \ ]

set encoding=UTF-8

let g:webdevicons_conceal_nerdtree_brackets = 1
autocmd VimEnter * hi Normal ctermbg=none
colorscheme dracula

filetype plugin indent on
syntax on

autocmd TermOpen * setlocal nonumber norelativenumber

set backspace=indent,eol,start
set mouse=a
set bg=dark
set number

" common editing commands
tnoremap <F1> <C-\><C-n>
inoremap <silent><expr> <S-Tab> coc#refresh()
nmap <silent> gd <Plug>(coc-definition)
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>

" gui font settings
set guifont=FiraCode\ Nerd\ Font:h15 " for some reason JetBrains font doesn't work on some GUI neovim frontends :/

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

tnoremap <C-h> <Left>
tnoremap <C-j> <Down>
tnoremap <C-k> <Up>
tnoremap <C-l> <Right>

" copy and paste commands
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

imap jk <Esc>

nnoremap <silent> <F2> :belowright split term://bash<CR>
noremap <F3> :resize -5<CR>
noremap <F4> :resize +5<CR>
tmap <silent> <F2> <C-\><C-n> :bd! <CR>
autocmd TermOpen * startinsert


set noshowmode
set tabstop=4
set shiftwidth=4
