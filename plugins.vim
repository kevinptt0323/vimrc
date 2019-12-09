" set for vundle
" git clone https://github.com/gmarik/Vundle.vim
filetype off
if has("unix")
	set rtp+=~/.vim/bundle/Vundle.vim/
	call vundle#rc()
else
	set rtp+=~/vimfiles/bundle/Vundle.vim/
	call vundle#rc('$HOME/vimfiles/bundle/')
endif

" plugin {{{
" bundle settings {{{
call vundle#begin()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

"Bundle 'L9'
"Bundle 'FuzzyFinder'

" NERDTree
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'editorconfig/editorconfig-vim'

" SuperTab
Bundle 'ervandew/supertab'

" fzf
Bundle 'junegunn/fzf'
Bundle 'junegunn/fzf.vim'

" jsbeautify
"Bundle 'maksimr/vim-jsbeautify'

" syntax
Bundle 'ap/vim-css-color'
Bundle 'groenewege/vim-less'
"Bundle 'othree/yajs.vim'
Bundle 'isRuslan/vim-es6'
Bundle 'mxw/vim-jsx'
Bundle 'posva/vim-vue'

call vundle#end()
" }}}

" NERDTree {{{
map <C-n> :NERDTreeTabsToggle<CR>
let g:NERDTreeDirArrows=0
" }}}

" SuperTab {{{
let g:SuperTabDefaultCompletionType = "<c-n>"
" }}}

" fzf {{{
let g:fzf_buffers_jump = 1
" }}}

" vim-jsx {{{
let g:jsx_ext_required = 0
" }}}

" }}}

filetype on
