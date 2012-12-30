set nocompatible               " This must be first, because it changes other options as a side effect
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
Bundle "scrooloose/syntastic"
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

Bundle "scrooloose/nerdcommenter"

Bundle "scrooloose/nerdtree"
nmap <F9> :NERDTreeToggle<CR>
" Disable the scrollbars (NERDTree)
set guioptions-=r
set guioptions-=L

Bundle "majutsushi/tagbar"
nmap <Leader>t :TagbarToggle<CR>
set tags=tags,$HOME
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_width=36

Bundle "kien/ctrlp.vim"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

Bundle "tomasr/molokai"
colorscheme molokai

Bundle "tpope/vim-surround"

Bundle "c9s/bufexplorer"
nmap <F2> :BufExplorer<CR>

Bundle "Lokaltog/vim-powerline"
let g:Powerline_symbols = 'fancy'
let g:Powerline_cache_enabled = 1

Bundle "myusuf3/numbers.vim"
nmap <Leader>nt :NumbersToggle<CR>

Bundle "vim-scripts/YankRing.vim"
nmap <Leader>y :YRShow<CR>

Bundle "sjl/gundo.vim"
nmap <F7> :GundoToggle<CR>

Bundle "ervandew/supertab"
"au FileType python set omnifunc=pythoncomplete#Complete
"let g:SuperTabDefaultCompletionType = "context"
"set completeopt=menuone,longest,preview

Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "imom0/snipmate-snippets"

Bundle "garbas/vim-snipmate"
Bundle "hallison/vim-markdown"
Bundle "pangloss/vim-javascript"

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"let g:virtualenv_directory = "/Users/imom0/Code/python-environments"
"Bundle "jmcantrell/vim-virtualenv"

"Bundle "ivanov/vim-ipython"
Bundle "AutoComplPop"

Bundle "VimClojure"
let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1

Bundle "groenewege/vim-less"
Bundle "tsaleh/vim-matchit"
Bundle "mattn/zencoding-vim"
let g:user_zen_expandabbr_key = '<c-e>' 
let g:use_zen_complete_tag = 1

""

filetype plugin indent on     " required!

" tab settings

set tabstop=4

set shiftwidth=4

set smarttab

" show line number

set number

set showcmd

set showmatch

set showmode

" highlight search results

set hlsearch

set incsearch

set ignorecase

set smartcase

set backspace=2

set autoindent

set cindent

set textwidth=79

set sj=2 so=5

set ruler

set background=dark

"set mouse=a

set foldmethod=indent

set foldlevel=99

" auto fresh when a file has been modified

set autoread

syntax on

set guifont=Monaco\ for\ Powerline:h12

" no swapfile
set noswapfile

" maps windows move
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

set encoding=utf-8
set fileformats=unix

" set sensible defaults for different types of text files
au FileType c setlocal cindent tw=79
au FileType sh setlocal ai et sw=4 sts=4 noexpandtab
au FileType vim setlocal ai et sw=2 sts=2 noexpandtab
au FileType html setlocal ai et sw=2 sts=2 noexpandtab
au FileType css setlocal ai et sw=2 sts=2 noexpandtab
au FileType javascript setlocal ai et sw=2 sts=2 expandtab
au Filetype python setlocal expandtab

set t_Co=256
set laststatus=2

" make: gcc current_file.c -o current_file
set makeprg=gcc\ -o\ %<\ %

" cscope
if $CSCOPE_DB != ""
  cs add $CSCOPE_DB
endif
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" MacVim transparent
if has("gui_running")
  set transparency=0
  set background=light
  colorscheme slate
endif

" fold settings
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" wildignore settings
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc,*.pyc
set wildmenu 

" flake8 ignore
let g:syntastic_python_checker_args='--ignore=E128'
