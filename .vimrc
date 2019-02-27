set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Jedi Vim plugin for autocompletion
Plugin 'davidhalter/jedi'
Plugin 'davidhalter/jedi-vim'
" Vim Markdown.
Plugin 'plasticboy/vim-markdown'
" Vim Tmux command automator
Plugin 'benmills/vimux'
" A Git fuse for vim
Plugin 'tpope/vim-fugitive'
" A lintener and syntax checker!
" Plugin 'vim-syntastic/syntastic'
" adds information about marks at left side
Plugin 'kshenoy/vim-signature'
" Wiki in VIM!
Plugin 'vimwiki/vimwiki'
" Surroundings for code
Plugin 'tpope/vim-surround'
" SimpleNote 
Plugin 'mrtazz/simplenote.vim'
" Vim-Template
Plugin 'aperezdc/vim-template'
" Vim-GitGutter
Plugin 'airblade/vim-gitgutter'
" === ULTISNIPS START HERE ===
" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
" === ULTISNIPS ENDS HERE ===
" WakaTime!!
" Plugin 'wakatime/vim-wakatime'
" NerdTREE
Plugin 'scrooloose/nerdtree'
" CommandT!
Plugin 'wincent/command-t'


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
"
" VimWiki setup:
" Temporary removing this .md extension syntax for vimwiki - it overrides
" vim-markdown that I'm currently using when writing posts on pelican-blog.
" let g:vimwiki_ext2syntax = {'.md' : 'markdown' , '.markdown' : 'markdown'}

set history=700
syntax enable 
syntax on
" Change to hybrid mode - it's much better.
set relativenumber
set number
" according to
" http://jeffkreeftmeijer.com/2013/vims-new-hybrid-line-number-mode/

try
	colorscheme desert
catch
endtry
set background=dark
set encoding=utf8
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set nofoldenable
" vimux key-bindings to commands made in tmux pane.
nmap <leader>r :call VimuxRunCommand("make run")<cr>
nmap <leader>d :call VimuxRunCommand("make deploy")<cr>

" Number of spaces that a pre-existing tab is equal to.
" For the amount of space used for a new tab use shiftwidth.
highlight BadWhitespace ctermbg=red guibg=red

au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
" let g:syntastic_python_checkers = ['pylint']
" add django plugin for pylinter
" let g:syntastic_python_pylint_args = "--load-plugins pylint_django"

" For Vim-Template global variables:
let g:templates_no_autocmd = 0
let g:license = 'MIT'
let g:username = '[Anselmos](github.com/anselmos)'
let g:email = 'anselmos@users.noreply.github.com'

let g:SignatureForceMarkPlacement = 1

" FOR ULTISNIPS
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" END FOR ULTISNIPS.

" python from powerline.vim import setup as powerline_setup
" python powerline_setup()
" python del powerline_setup
" for gitgutter to update faster changes at vim
set updatetime=450

nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk
nmap <Leader>hv <Plug>GitGutterPreviewHunk
try 
    " Adds a simplenote user/password
    source ~/.vimrc.simplenote
catch
endtry
nmap <C-n> :NERDTreeToggle<CR>
