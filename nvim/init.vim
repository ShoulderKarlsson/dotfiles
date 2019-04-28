call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'dikiaap/minimalist'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'prettier/vim-prettier'
call plug#end()

filetype plugin indent on
syntax enable
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set relativenumber
set cursorline
colorscheme minimalist

" sane movement on wrapped line
nnoremap j gj
nnoremap k gk

" move lines in visual, insert and normal
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
nnoremap <C-K> :m .-2<CR>==
nnoremap <C-J> :m .+1<CR>==
inoremap <C-k> <Esc>:m .-2<CR>==gi
inoremap <C-j> <Esc>:m .+1<CR>==gi



let mapleader = ','

" Nerdtree
nmap <C-b> :NERDTreeToggle<CR>

" You Complete me
nnoremap <Leader>gt :YcmCompleter GoTo<CR>
nnoremap <Leader>fi :YcmCompleter FixIt<CR>

" FZF
" Search files in project
nnoremap <C-P> :GFiles<CR>
nnoremap <Leader>s :Ag<Space>

" Easy search
map <space> /

" Go-lang
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4
au FileType go nnoremap <Leader>gec :GoErrCheck<CR>


call coc#add_extension('coc-tsserver', 'coc-eslint', 'coc-prettier')
call coc#config('prettier', {
\ 'singleQuote': v:true,
\ 'trailingComma': 'all',
\ 'jsxBracketSameLine': v:true,
\ 'eslintIntegration': v:true,
\ })
"
" Fix autofix problem of current line
nmap <leader>fi  <Plug>(coc-fix-current)

" Trigger completetion
inoremap <silent><expr> <c-space> coc#refresh()

" Select from auto-complete list with tab
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

nmap <leader>gt <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
