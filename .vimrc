execute pathogen#infect()

colorscheme jellybeans
syntax on
set t_Co=256
filetype plugin indent on

set nu
set scrolloff=3
set tabstop=4
set shiftwidth=4
set expandtab
set showcmd

" ctrlp
let g:ctrlp_custom_ignore = 'node_modules'

" nerdtree
map <Leader>t :NERDTreeToggle<CR>
map <Leader>f :NERDTreeFind<CR>

" ale
map <Leader>g :ALEGoToDefinition<CR>
let g:ale_completion_enabled = 1
let g:ale_fixers = {'typescript': ['prettier']}
let g:ale_linters = {'typescript': ['tslint', 'tsserver', 'typecheck']}

