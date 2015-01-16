" 20141217 1722
"Encoding settings
set encoding=utf-8
set fileformat=unix
set ambiwidth=double
set fileencodings=utf-8,big5,latin1

" Show mode on bottom-left
set showmode

" Color settings
syntax on
set t_Co=256
set hlsearch
set bg=dark

" Status line
set laststatus=2
set wildmenu " commend line auto complete

" keep at least 5 lines above/below
set scrolloff=5

set ruler
set cursorline

" ignore case when searching
" set ic

" Enable backspace
set bs=2

" Show line numbers
set nu

" Tab charactor related settings
set tabstop=4
set shiftwidth=4
set autoindent
set smarttab
set smartindent
set listchars=tab:>\ 
set list

set autochdir

set statusline=%4*%<\ %1*[%F]
set statusline+=%4*\ %5*[%{&encoding},  "encoding
set statusline+=%{&fileformat}]%m       "file format
set statusline+=%4*%=\ %6*%y%4*\ %3*%l%4*,\ %3*%c%4*\ \<\ %2*%P%4*\ \>

hi User1 ctermfg=cyan ctermbg=darkgray
hi User2 term=underline ctermfg=yellow ctermbg=darkgray
hi User3 term=underline ctermfg=yellow ctermbg=darkgray
hi User4 term=underline ctermfg=white ctermbg=darkgray
hi User5 ctermfg=green ctermbg=darkgray
hi User6 ctermfg=white ctermbg=darkgray

" hi TabLineFill ctermfg=Black ctermbg=Grey
hi TabLine ctermfg=Black ctermbg=Grey
hi TabLineSel ctermfg=White ctermbg=Black

imap<F9> <ESC>:w<Enter><F9>
nmap<F9> :!./%:t

nnoremap k gk
nnoremap j gj

inoremap jj <ESC> 

function! Set_c_Prefs()
	nmap<F9>  :!gcc "%:t" -o "%:r.out" -Wall -Wshadow -O2 -Im && echo "===== compile done =====" && "./%:r.out"
	nmap<F10> :!gcc "%:t" -o "%:r.out" -Wall -Wshadow -O2 -Im
	nmap<F11> :!gcc "%:t" -o "%:r.out" -Wall -Wshadow -O2 -Im -g && valgrind --leak-check=full --log-file=%:r.vglog ./%:r.out
endfunction
function! Set_cpp_Prefs()
	nmap<F8> :!g++ "%:t" -o "%:r.out" --std=c++11 -static -Wall -Wshadow -O2 -Im && echo "===== compile done =====" && "./%:r.out"
	nmap<F9> :!g++ "%:t" -o "%:r.out" --std=c++11 -static -Wall -Wshadow -O2 -Im -DKEVINPTT && echo "===== compile done =====" && "./%:r.out"
	nmap<F10> :!g++ "%:t" -o "%:r.out" --std=c++11 -static -Wall -Wshadow -O2 -Im -DKEVINPTT 
	"map<F9> :!g++ "%:t" -o "%:r.out" -Wall -Wshadow -O2 -Im -DKEVINPTT && echo "===== compile done =====" && "./%:r.out"
	"map<F10> :!g++ "%:t" -o "%:r.out" -Wall -Wshadow -O2 -Im -DKEVINPTT
	"map<F11> :!g++ "%:t" -o "%:r.out" -Wall -Wshadow -O2 -Im -g && valgrind --leak-check=full --log-file=%:r.vglog ./%:r.out
endfunction
function! Set_pascal_Prefs()
	nmap<F9>  :!fpc "%:t" && echo "===== compile done =====" && "./%:r"
	nmap<F10> :!fpc "%:t"
	nmap<F11> :!fpc "%:t" && valgrind --leak-check=full --log-file=%:r.vglog ./%:r
endfunction

function! Set_web_Prefs()
	setlocal tabstop=2
	setlocal shiftwidth=2
	setlocal listchars=tab:\|\ 
endfunction


filetype on
filetype plugin on
autocmd filetype c call Set_c_Prefs()
autocmd filetype cpp call Set_cpp_Prefs()
"autocmd filetype pascal call Set_pascal_Prefs()
autocmd filetype javascript,htm,xml,html,xhtml,php,css call Set_web_Prefs()

autocmd! BufNewFile * silent! 0r ~/.vim/skel/Template.%:e

execute pathogen#infect()
