call plug#begin('~/.vim/plugged')

" Syntax and language specific
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leshill/vim-json'
Plug 'editorconfig/editorconfig-vim'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" Actual Plugs
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-obsession'

call plug#end()

set backspace=indent,eol,start

colorscheme spacegrey

let g:javascript_plugin_jsdoc = 1

let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

imap <expr><TAB>
 \ pumvisible() ? "\<C-n>" :
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" Easier splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

set mouse=a
