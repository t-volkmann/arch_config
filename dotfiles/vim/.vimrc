set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Install vim-ranger
Plugin 'Mizuchi/vim-ranger'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Enables pathogen
" execute pathogen#infect()

set clipboard=unnamed

colorscheme default
set t_Co=256

set tabstop=4 shiftwidth=4 expandtab
imap jk <Esc>

set ruler

set autoindent

set hlsearch


" let g:indent_guides_enable_on_vim_startup = 1 
" let g:indent_guides_auto_colors = 1 
" let g:indent_guides_guide_size = 1 
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=2 ctermbg=4 
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=2 ctermbg=6

nnoremap <silent> <F5> :!clear; python %<CR>
" nnoremap <C-S-F1> :NERDTreeToggle<CR>

" Window navigation
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-h> <C-w>h

" Split window vertically
nmap <leader>v <C-w>v<C-w>l

" Split window horizontally
nmap <leader>s <C-w>s<C-w>j

" Follow ctags to new tab
nmap <silent><Leader><C-]> <C-w><C-]><C-w>T

" Set relative numbers
set number
set relativenumber

" Output text without line numbers
"function Nonum() range
    " .'| pbcopy')
"endfunction

" Ranger keymap
nnoremap <f3> :tabe %:p:h<cr>

syntax on
