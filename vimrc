 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'msanders/snipmate.vim'
 Bundle 'tpope/vim-surround'
 Bundle 'tpope/vim-git'
 Bundle 'ervandew/supertab'
 Bundle 'sontek/minibufexpl.vim'
 Bundle 'wincent/Command-T'
 Bundle 'mitechie/pyflakes-pathogen'
 Bundle 'mileszs/ack.vim'
 Bundle 'sjl/gundo.vim'
 Bundle 'fs111/pydoc.vim'
 Bundle 'vim-scripts/pep8'
 Bundle 'alfredodeza/pytest.vim'
 Bundle 'vim-scripts/TaskList.vim'
 Bundle 'vim-scripts/The-NERD-tree'
 Bundle 'sontek/rope-vim'
 " vim-scripts repos
 Bundle 'python.vim'
 " non github repos

 filetype plugin indent on     " required! 

syntax on
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

set backspace=indent,eol,start

set ruler
set showcmd

autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

set foldmethod=indent
set foldlevel=99

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" PEP8 Validator
let g:pep8_map='<leader>8'

" Code Completion
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" Search
nmap <leader>a <Esc>:Ack!

" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
