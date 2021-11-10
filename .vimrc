execute pathogen#infect()

colorscheme onedark
" colorscheme OceanicNext
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

" regexpengine, :help 're'
set re=2

autocmd BufRead,BufNewFile  *.purs set tabstop=2|set shiftwidth=2


" ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|dist'

" nerdtree
map <Leader>t :NERDTreeToggle<CR>
map <Leader>f :NERDTreeFind<CR>

" ale
map <Leader>g :ALEGoToDefinition<CR>
map <Leader>r :ALEFindReferences<CR>
map <Leader>h :ALEHover<CR>

let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
let g:ale_fix_on_save = 1

let js_fixers = ['prettier', 'eslint']
let g:ale_fixers = {
\  'typescript': ['prettier'],
\  'typescriptreact': ['prettier'],
\  'javascript': ['prettier']
\}

let g:ale_linters = {
\  'typescript': ['tsserver', 'typecheck'],
\  'typescriptreact': ['tsserver', 'typecheck'],
\  'rust': ['cargo']
\}

