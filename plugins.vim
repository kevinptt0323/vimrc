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
Plugin 'gmarik/vundle'

" Theme
Plugin 'crusoexia/vim-monokai'

" NERDTree
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'editorconfig/editorconfig-vim'

" SuperTab
Plugin 'ervandew/supertab'
Plugin 'ycm-core/YouCompleteMe'

" fzf
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'taglist.vim'

" syntax
Plugin 'ap/vim-css-color'
Plugin 'groenewege/vim-less'
Plugin 'othree/yajs.vim'
Plugin 'mxw/vim-jsx'
Plugin 'posva/vim-vue'
Plugin 'leafgarland/typescript-vim'
"Plugin 'peitalin/vim-jsx-typescript'

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

" taglist.vim {{{
set tags=tags;~,TAGS;~
" }}}

" vim-jsx {{{
let g:jsx_ext_required = 0
" }}}

" YouCompleteMe {{{
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
" }}}

" }}}

filetype on
