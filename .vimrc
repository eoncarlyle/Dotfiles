" ---- Minimal configuration:
set smartindent   " Do smart autoindenting when starting a new line
set shiftwidth=4  " Set number of spaces per auto indentation
set expandtab     " When using <Tab>, put spaces instead of a <tab> character

" ---- Good to have for consistency
set tabstop=4   " Number of spaces that a <Tab> in the file counts for
set smarttab    " At <Tab> at beginning line inserts spaces set in shiftwidth

" ---- Bonus for proving the setting
" Displays '-' for trailing space, '>-' for tabs and '_' for non breakable space
set listchars=tab:>-,trail:-,nbsp:_
set list

syntax enable
set background=dark

" Enable folding
set foldmethod=syntax
set foldlevel=99

" Enable folding with spacebar
nnoremap <space> za

nmap <C-k> [e
nmap <C-j> ]e
vmap <C-k> [egv
vmap <C-j> ]egv


:set nu

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Always show NERDTree
autocmd VimEnter * NERDTree

" Markdown Settings
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd FileType markdown set cursorline
autocmd FileType markdown setlocal spell spelllang=en_gb

nnoremap <C-g> :Goyo<CR>

set linebreak
set termguicolors

" Allow project specific prettierfile
let g:neoformat_try_node_exe = 1

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/goyo.vim'
Plug 'vim-scripts/seashell'
Plug 'sbdchd/neoformat'
call plug#end()

let g:airline_theme='nord'
colorscheme nord
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=0 expandtab
let g:goyo_height='80%'
let g:goyo_width='80%'
