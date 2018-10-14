execute pathogen#infect()

filetype plugin on
:syntax on

set backspace=indent,eol,start
set tabstop=4
set shellslash
set grepprg=grep\ -nH\ $*
filetype indent on
let g:tex_flavor='latex'

"Ctrl + L Toggles Off the Highlight"
map <C-L> :noh<CR>

" This zi toggles the folding 
nnoremap <C-H> zi
:command Q q
cabb W w
cabb WQ wq
cabb Wq wq


" The code below gives the block cursor
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

"Sets line numbers
set number

call plug#begin()
Plug 'morhetz/gruvbox'
call plug#end()

colorscheme gruvbox

"Only press CTRL W once to toggle screens
nnoremap <C-W> <C-W><C-W>

"Below is a hacky fix to get rid of a redline introduced in the pymode
let g:pymode_options_colorcolumn = 0

"For Python development

"
" enable syntax highlighting
"syntax enable
"
"" set tabs to have 4 spaces
"set ts=4
"
"" indent when moving to the next line while writing code
"set autoindent
"
"" expand tabs into spaces
"set expandtab
"
"" when using the >> or << commands, shift lines by 4 spaces
"set shiftwidth=4
"
"" show a visual line under the cursor's current line
"set cursorline
"
"" show the matching part of the pair for [] {} and ()
"set showmatch
"
"" enable all Python syntax highlighting features
"let python_highlight_all = 1
