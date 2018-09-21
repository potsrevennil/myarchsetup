call plug#begin()
" Plugins
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mattn/emmet-vim'
Plug 'szw/vim-tags'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" git plugin
Plug 'tpope/vim-fugitive'                       
Plug 'Shougo/neocomplete.vim'
" shell script
Plug 'WolfgangMehner/bash-support'
Plug 'fatih/vim-go'

Plug 'majutsushi/tagbar'

Plug 'FStarLang/VimFStar', {'for': 'fstar'}


call plug#end()

" Display line number
set number

" Config YouCompleteMe
" let g:ycm_confirm_extra_conf = 1
" let g:ycm_extra_conf_globlist = ['~/dev/*','!~/*']
let g:ycm_server_python_interpreter = '/usr/bin/python2'
let g:ycm_global_ycm_extra_conf = '$USER/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" Enable neocomplete
let g:neocomplete#enable_at_startup = 1

" set color theme
syntax on
set foldmethod=manual
colorscheme potts_modified

" set background=dark
" hi Folded ctermbg=black

" Set indent
set tabstop=4
set expandtab
set shiftwidth=4
set shiftround
set autoindent


" Set NERDTree
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '//' }, 'c++': { 'left': '//' }, 'java': { 'left': '//' }, 'python': { 'left': '#' }  }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Set NERDTreeTab
" nnoremap <silent> <F5> :NERDTree<CR>
nnoremap <silent> <F5> :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_new_tab     = 1
let g:nerdtree_tabs_synchronize_view    = 1
let g:nerdtree_tabs_synchronize_view    = 1
let g:nerdtree_tabs_smart_startup_focus = 1

set autochdir
set tags=tags;

" Set Vim-tags
" <leader> -> '\'
nnoremap <leader>tg :TagsGenerate!<CR>
let g:vim_tags_auto_generate = 1
let g:vim_tags_project_tags_command = "{CTAGS} -R {OPTIONS} {DIRECTORY} 2>/dev/null"
let g:vim_tags_use_language_field = 1
let g:vim_tags_ignore_files = ['.gitignore', '.svnignore', '.cvsignore']
let g:vim_tags_ignore_file_comment_pattern = '^[#"]'
let g:vim_tags_directories = [".git", ".hg", ".svn", ".bzr", "_darcs", "CVS"]
let g:vim_tags_main_file = 'tags'
let g:vim_tags_extension = '.tags'
"
map <leader>] <C-]>
let g:auto_ctags = 1
let g:auto_ctags_directory_list = ['.git', '.svn']
let g:auto_ctags_tags_name = 'tags'
let g:auto_ctags_tags_args = '--tag-relative --recurse --sort=yes'
let g:auto_ctags_filetype_mode = 1

nmap <F8> :TagbarToggle<CR>



" Vim-airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" bash-support
filetype on
filetype plugin on
