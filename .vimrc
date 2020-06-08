execute pathogen#infect()

colorscheme OceanicNext
" colorscheme jellybeans
" colorscheme one
" set background=dark

syntax on
set t_Co=256
set term=screen-256color
filetype plugin indent on

set nu
set scrolloff=3
set tabstop=4
set shiftwidth=4
set expandtab
set showcmd
set hlsearch
set lcs=tab:--,trail:·,eol:¬
set list

" ctrlp
let g:ctrlp_custom_ignore = 'node_modules'

" nerdtree
map <Leader>t :NERDTreeToggle<CR>
map <Leader>f :NERDTreeFind<CR>

" ale
map <Leader>g :ALEGoToDefinition<CR>
map <Leader>r :ALEFindReferences<CR>
let g:ale_completion_enabled = 1
let g:ale_completion_tsserver_autoimport = 1
let g:ale_fixers = {'typescript': ['prettier']}
" \  'typescript': ['tslint', 'tsserver', 'typecheck'],
let g:ale_linters = {
\  'typescript': ['tsserver', 'typecheck'],
\  'rust': ['cargo']
\}

