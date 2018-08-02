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
Plugin 'vim-airline/vim-airline'
Plugin 'valloric/youcompleteme'
Plugin 'tpope/vim-commentary'
Plugin 'w0rp/ale'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'morhetz/gruvbox'
Plugin 'mhartington/oceanic-next'

" ################################################
" Javascript
" ################################################
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'leafgarland/typescript-vim'
Plugin 'ianks/vim-tsx'
Plugin 'alvan/vim-closetag'

call vundle#end()


" ################################################
" Misc
" ################################################
set relativenumber
set nocompatible
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab 
filetype plugin indent on
set autoindent
set cursorline
set wildmenu
set noswapfile


" ################################################
" Theme Customization
" ################################################
" set termguicolors
syntax enable
set background=dark
colors gruvbox

" Custom bindings
let mapleader = ','
nmap <Leader>c gcc
nmap <Leader>p :bprevious<CR>
nmap <Leader>n :bnext<CR>
nmap <C-b> :NERDTreeToggle<CR>

" Splitted window navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <Leader>gt :YcmCompleter GetType<CR>
nnoremap <Leader>fd :YcmCompleter GoToDefinition<CR>
nnoremap <Leader>rn :YcmCompleter RefactorRename 


" let g:ale_fixers = {

" ################################################
" ALE
" ################################################
let g:ale_fixers = {
\   'javascript': ['eslint', 'prettier'],
\   'typescript': ['tslint', 'prettier']
\}
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1

" ################################################
" CTRLP
" ################################################
let g:ctrlp_custom_ignore = {
 \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp|build|dist|bundle$',
 \ 'file': '\.so$\|\.dat$|\.DS_Store$'
 \ }


let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js,*.jsx,*.tsx"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js,*.tsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'


" YCM, Disabling preview window
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0


autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
