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
Plugin 'jiangmiao/auto-pairs'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'NLKNGuyen/papercolor-theme'

" ################################################
" Javascript
" ################################################
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'alvan/vim-closetag'
Plugin 'prettier/vim-prettier', {'do': 'yarn install'}
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
" Fix for tmux
set t_Co=256
set background=dark
colorscheme PaperColor

" Custom bindings
let mapleader = ','
nmap <Leader>c gcc
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
" let g:ale_fixers = {
" \   'javascript': ['eslint', 'prettier'],
" \   'typescript': ['tslint', 'prettier']
" \}
" let g:ale_fix_on_save = 1
" let g:ale_javascript_prettier_use_local_config = 1

" ################################################
" CTRLP
" ################################################
let g:ctrlp_custom_ignore = {
 \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp|build|dist|bundle$',
 \ 'file': '\.so$\|\.dat$|\.DS_Store$'
 \ }

" Closetag configuration
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js,*.jsx,*.tsx"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js,*.tsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'

let g:jsx_ext_required = 2

let g:ycm_add_preview_to_completeopt = 0

autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript

" vim-prettier configuration
let g:prettier#config#tab_with = 2
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#bracket_spacing = 'false'
let g:prettier#config#arrow_parens = 'avoid'
let g:prettier#config#semi = 'false'



" " Go configurations
" let g:go_highlight_build_constraints = 1
" let g:go_highlight_extra_types = 1
" let g:go_highlight_fields = 1
" let g:go_highlight_functions = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_operators = 1
" let g:go_highlight_structs = 1
" let g:go_highlight_types = 1
" let g:go_auto_type_info = 1
" " Go filetype configurations
" au FileType go set noexpandtab
" au FileType go set shiftwidth=4
" au FileType go set softtabstop=4
" au FileType go set tabstop=4
