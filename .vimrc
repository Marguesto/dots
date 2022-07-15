call plug#begin()
"Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim'
Plug 'pangloss/vim-javascript'
Plug 'christoomey/vim-tmux-navigator'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yggdroot/indentline'
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='supernova'

"indentline
let g:indentLine_char = '|'
let g:indentLine_enabled = 1

" code folding
set foldmethod=indent
set foldlevel=99


set number relativenumber

set splitbelow
set splitright

nnoremap <S-J> :bp!<CR>
nnoremap <S-K> :bn!<CR>

vmap <C-c> "+y
vmap <C-x> "+c



"disable autoindent when pasting
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"


syntax on
filetype on
filetype indent on
filetype plugin indent on
set autoindent

set clipboard=unnamedplus

autocmd BufNewFile *.cpp execute "0r ~/.vim/template/cpp"
autocmd BufNewFile *.c execute "0r ~/.vim/template/c.c"

"auto run
map <F9> :!g++ -g % -o %:r && ./%:r <CR>
map <F7> :!gcc %:r && ./%:r <CR>
map <F8> :!clm %:r -o %:r && ./%:r <CR>
map <F5> :!g++ -g % -o %:r <CR>

"braces

inoremap {<CR> {<CR>}<Esc>ko<tab>
inoremap [<CR> [<CR>]<Esc>ko<tab>
inoremap (<CR> (<CR>)<Esc>ko<tab>

inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<c-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" editing

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set viminfo='25,\"50,n~/.viminfo
