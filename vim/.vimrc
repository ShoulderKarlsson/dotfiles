filetype off

" ################################################
" Vundle
" ################################################
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ################################################
" Misc
" ################################################
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'valloric/youcompleteme'
Plugin 'mileszs/ack.vim'
Plugin 'mhartington/oceanic-next'
Plugin 'fatih/vim-go'

" ################################################
" Javascript
" ################################################
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'alvan/vim-closetag'
Plugin 'prettier/vim-prettier', {'do': 'npm install'}
call vundle#end()

" ################################################
" Native configurations
" ################################################
filetype plugin indent on
set relativenumber
set cursorline
set nocompatible
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab 
set autoindent
set wildmenu
set noswapfile
syntax on
set laststatus=2
let &t_ut=''
colorscheme OceanicNext

" ################################################
" Custom bindings
" ################################################
let mapleader = ','
nmap <C-b> :NERDTreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <Leader>gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <Leader>gt :YcmCompleter GoTo<CR>
nnoremap <Leader>rn :YcmCompleter RefactorRename 
nnoremap <Leader>fi :YcmCompleter FixIt<CR>
nnoremap <Leader>s :Ack --ignore-dir={build,dist,node_modules}   ./<Left><Left><Left><Left>

" Go leader bindings
nnoremap <Leader>gr :GoRun main.go<CR>
nnoremap <Leader>gec :GoErrCheck<CR>
let g:go_fmt_command = "goimports"

" Fuzzy search over buffers
nnoremap <Leader>f :CtrlPBuffer<CR>
" ################################################
" CTRLP
" ################################################
let g:ctrlp_custom_ignore = {
 \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp|build|dist|bundle|venv$',
 \ 'file': '\.so$\|\.dat$|\.DS_Store$'
 \ }

" Closetag configuration
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js,*.jsx,*.tsx"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js,*.tsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'

let g:jsx_ext_required = 2

let g:ycm_autoclose_preview_window_after_completion=1

autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript

" vim-prettier configuration
let g:prettier#config#tab_with = 2
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#bracket_spacing = 'false'
let g:prettier#config#arrow_parens = 'avoid'
let g:prettier#config#semi = 'false'



" We dont want to se pyc files i the tree
let NERDTreeIgnore = ['\.pyc$', '__pycache__$']
