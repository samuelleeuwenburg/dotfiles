" Pathogen stuff
call pathogen#infect()

syntax on 
filetype plugin on

set t_Co=256
colorscheme flattown

if &term =~ '256color'
  " disable Background Color Erase (BCE)
  set t_ut=
endif


" Settings
set autoindent
" set cursorcolumn
" set cursorline
set foldmethod=marker
set hlsearch
" set lcs=tab:--,trail:·,eol:¬
" set list
set nu
set rnu
set numberwidth=5
set ruler
set showcmd
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set cc=120

" make backspace work like most other apps
set backspace=2 

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" JSON syntax trick
autocmd BufNewFile,BufRead *.json set ft=javascript

" HandleBars syntax 
autocmd BufNewFile,BufRead *.hbs set ft=html

" where to put backup files.
set backupdir=~/.vim/_backup// 
" where to put swap files.
set directory=~/.vim/_temp// 

" NERDTree stuff 
autocmd vimenter * if !argc() | NERDTree | endif
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

" vim-multiple-cursor stuff
" let g:multi_cursor_next_key='<C-d>'
" let g:multi_cursor_prev_key='<C-p>'
" let g:multi_cursor_skip_key='<C-x>' 
" let g:multi_cursor_quit_key='<Esc>' 

" neocompletecache stuff
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#min_syntax_length = 2
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" turn on LimeLight plugin when entering INSERT mode
autocmd InsertEnter * :Limelight
autocmd InsertLeave * :Limelight!


