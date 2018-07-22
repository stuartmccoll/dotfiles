execute pathogen#infect()

" Sidebar
autocmd vimenter * NERDTree

" Always show current position
set ruler

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Show matching brackets
set showmatch
set mat=2

" Show line numbers
set number

" Turn off error sounds
set noerrorbells
set novisualbell
set t_vb=
set tm=500
if has("gui_macvim")
	autocmd GUIEnter * set vb t_vb=
endif

" Extra left margin
set foldcolumn=1

" Move cursor by x lines when using j/k
set so=7

" Enable syntax highlighting
syntax enable

" Set extra options when running in GUI mode
if has("gui_running")
	set guioptions-=T
	set guioptions-=e
	set t_Co=256
	set guitablabel=%M\ %t
endif

" Set UTF8 as the standard encoding
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backups off
set nobackup
set nowb
set noswapfile

" Set smart tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai " Auto indent
set si " Smart indent
set wrap " Wrap lines

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Returns true if paste mode is enabled
function! HasPaste()
	if &paste
		return 'PASTE MODE  '
	endif
	return ''
endfunction
