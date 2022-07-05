"
"  init.vim
"  Dotfiles
"
"  Created by Lennart Doppenschmitt on 2018-08-08.
"  Copyright 2018 Researchnix. All rights reserved.




""" sourcing
source $HOME/.config/nvim/plug-config/mappings.vim
source $HOME/.config/nvim/plug-config/vimwiki.vim
source $HOME/.config/nvim/plug-config/nerdtree.vim
source $HOME/.config/nvim/plug-config/citation.vim

source $HOME/.config/nvim/plug-config/completion.vim



""" random
set mouse=a





""" Vim plug
call plug#begin('~/.config/nvim/plugged')

" colors
Plug ' arcticicestudio/nord-vim'            " the nord theme
Plug 'joshdick/onedark.vim'                 " onedark
Plug 'Nequo/vim-allomancer'                 " dark, great
Plug 'Jimeno0/vim-chito'                    " dark, awesome for haskell!!
Plug 'altercation/vim-colors-solarized'     " dark,
Plug 'KKPMW/oldbook-vim'                    " okay, very simple
Plug 'dracula/vim'                          " funny ...
Plug 'nightsense/rusticated'                " best light colorscheme
Plug 'vim-scripts/oceanlight'               " light, not bad
Plug 'nightsense/stellarized'               " light and dark, set background, with airline theme !!!
Plug 'nightsense/simplifysimplify'          " very nice
Plug 'nightsense/snow'                      " pretty good
Plug 'nightsense/forgotten'                 " not bad
Plug 'arcticicestudio/nord-vim'             " colo scheme from Nord as in the beamer template

"other
Plug '907th/vim-auto-save'                  " autosave ctrl + A
Plug 'vifm/vifm.vim'                        " vifm
Plug 'jpalardy/vim-slime'                   " sending code over to other tmxu pane
Plug 'vimwiki/vimwiki'                      " wiki
Plug 'christoomey/vim-tmux-navigator'       " seamless navigation between vim and tmux
Plug 'ap/vim-css-color'                     " color code for hex values etc
Plug 'junegunn/goyo.vim'                    " minimalist environemnt for writing
Plug 'lervag/vimtex'                        " latex god mode

" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'




""" tbd
Plug 'ctrlpvim/ctrlp.vim'                   " fzf for vim
Plug 'Shougo/unite.vim'                     " no idea yet
Plug 'rafaqz/citation.vim'
Plug 'vim-airline/vim-airline' " Powerline for nvim, this cool thing at the bottom
Plug 'vim-airline/vim-airline-themes' " All the themes for the powerline TODO: check out all the compatible plugins on githubA
Plug 'powerline/fonts'
Plug 'scrooloose/nerdtree' " A filebrowser, toggle with c-b
Plug 'scrooloose/nerdcommenter' " A really nerdy and cool way to add/remove comments
Plug 'ryanoasis/vim-devicons' " Dev Icons are suppose to make icons prettier TODO
Plug 'tpope/vim-fugitive' " A git tool, TODO learn this
"Plug 'tpope/vim-sensible' " General settings making vim more comfortable
Plug 'tpope/vim-surround' " Handle surroundings with ease
Plug 'majutsushi/tagbar' " Side panel to view coding structure. I had to install ctags with brew


""" completion plugins
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'zchee/deoplete-jedi'
Plug 'ervandew/supertab'



" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go'




""" Haven't had time to look through these plugins yet.
"Plug 'jiangmiao/auto-pairs'
"Plug 'junegunn/vim-easy-align'
"Plug 'alvan/vim-closetag'
"Plug 'tpope/vim-abolish'
"Plug 'Yggdroot/indentLine'
"Plug 'sheerun/vim-polyglot'
"Plug 'chrisbra/Colorizer'
"Plug 'heavenshell/vim-pydocstring'
"Plug 'vim-scripts/loremipsum'
"Plug 'metakirby5/codi.vim'
"Plug 'plytophogy/vim-virtualenv' " Suppose to make working with virtual environments easier. TODO learn this
Plug 'neovimhaskell/haskell-vim'


Plug 'neovim/nvim-lsp'
call plug#end()













" tagbar



" slime
let g:slime_target = "tmux"


" Autosave
let g:auto_save = 1

" vimtex
" let g:tex_flavor = 'lualatex'
let g:vimtex_compiler_programe = 'pdflatex'
" let g:vimtex_compiler_programe = 'xelatex'
" let g:vimtex_compiler_programe = 'lualatex'
let g:vimtex_view_method = 'skim'
let g:vimtex_view_general_viewer = 'skim'
" let g:vimtex_compiler_callback_hooks = ['MyTestHook']

" function! MyTestHook(status)
  " echom a:status
" endfunction


" Airline configuration
let g:airline_theme='minimalist'
" other themes: simple, dark, solarized,stellarized_dark
let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Python3 VirtualEnv
" let g:python3_host_prog = expand('~/.config/nvim/env/bin/python3')


" Nerdcommenter
let g:NERDSpaceDelims = 1


" Disable documentation window
set completeopt-=preview


" Devicons
set guifont=SFMono:h11                                  " This is suppose to help with the right Icons


" Haskell-vim Plugin
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
let g:haskell_classic_highlighting = 0



" " Neovim :Terminal
" tmap <Esc> <C-\><C-n>
" tmap <C-c> <Esc><C-w>
" tmap <C-d> <Esc>:q<CR>
" " nnoremap <c-d> :split<CR>:term<CR>A
" nnoremap <c-d> :vsplit<CR>:term<CR>A
" autocmd BufWinEnter,WinEnter term://* startinsert
" autocmd BufLeave term://* stopinsert

" Other Configurations
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set ruler laststatus=2 showcmd showmode
set list listchars=trail:»,tab:»-
set fillchars+=vert:\ 
set wrap breakindent
set encoding=utf-8
set relativenumber number
set title
" set textwidth=69



" Set the colorscheme and background
syntax enable
filetype plugin indent on
colorscheme snow

let g:solarized_termcolors=256
" set background=dark
