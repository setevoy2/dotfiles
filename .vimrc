set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set paste
set smartindent
" highlight searche
set hlsearch
" case insensitive search
set ignorecase
set smartcase
" ask to save
set confirm
"set number
syntax on

call plug#begin('~/.vim/plugged')

" https://github.com/romainl/flattened
Plug 'romainl/flattened'

" https://github.com/itchyny/lightline.vim
Plug 'itchyny/lightline.vim'

" https://github.com/scrooloose/nerdtree
Plug 'scrooloose/nerdtree'

" https://github.com/fatih/vim-go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" https://vimawesome.com/plugin/syntastic
Plug 'vim-syntastic/syntastic'

call plug#end()

" display lightline
set laststatus=2
set noshowmode

" https://github.com/romainl/flattened
colorscheme flattened_dark

" NERDTree opts
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

" syntastic opts
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers=['golint']
