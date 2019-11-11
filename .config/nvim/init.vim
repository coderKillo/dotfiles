set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ajmwagar/vim-deus'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'easymotion/vim-easymotion'
Plugin 'majutsushi/tagbar'
Plugin 'ycm-core/YouCompleteMe'

call vundle#end()            

"Color

set t_Co=256
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
colorscheme deus
set background=dark
let g:deus_termcolors=256

"Settings

set tabstop=4
set shiftwidth=4
set smartindent

set number
set relativenumber
set textwidth=80

set hlsearch
set incsearch
set showmatch
set ignorecase
set smartcase

syntax on

" Snippes
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

let g:UltiSnipsEditSplit="vertical"

" Tagbar
nmap <F8> :TagbarToggle<CR>

" NerdTree
map <C-n> :NERDTreeToggle<CR>
" Close NerdTree if only windwo
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"autocmd vimenter * NERDTree
