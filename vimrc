	
" Add for pathogen plugin
filetype off
call pathogen#infect()

" for Easy-motion plugin
let g:EasyMotion_leader_key ='<Leader>'

" for SuperTab plugin
let g:SuperTabDefaultCompletionType = "context"

" for repeat plugin
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" Bind NerdTree plugin to <Ctrl+E, Ctrl+E>
noremap <C-E><C-E> :NERDTree<CR>
noremap <C-E><C-C> :NERDTreeClose<CR>

" save file if shift buffer
au FocusLost * :wa

" for mapping
let mapleader = ','

" set  fold tag 
nnoremap <leader>ft Vatzf
" set ; mapping like :
nnoremap ; :

" set Quicker Escape
inoremap jj <ESC>
" set trailing whitespaces
nnoremap <leader>x :%s/\s\+$//<cr>:let @/=''<CR>
" set css properties sorted
nnoremap <S-F7> zRgg:while search("{$", 'W') \| .+1,/}$/-1sort \| endwhile<CR>
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
" set reseelcted text that was just pasted
nnoremap <leader>v V`]

" set windows navigation 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" for Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" for Aetheticsx
set wildmenu
set wildmode=list:full

"set cursorline
set visualbell
set ttyfast
set showmode
set backspace=indent,eol,start

" for window warping/sizing
set wrap
set columns=80
set textwidth=75
set formatoptions+=tcq
set formatoptions+=a
set showbreak=...

" for invisible characters
set nolist
set listchars=tab:▸\ ,eol:¬
" set relativenumbe

" for Line numbers
set cpoptions+=n
set number
set linebreak
set numberwidth=5

" for searching
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
nnoremap <tab> %

" Use Vim settings, rather than Vi settings (much better!).
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching


" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif




