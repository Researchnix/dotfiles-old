let mapleader=","


" testing area
" a vmap that replaces spaces with hyphens
nnoremap <leader>re :registers <CR>
nmap <space> va$l
nmap <leader>c Hlrx
nmap <c-c> :bd<CR>
nmap <leader>ww :VimwikiIndex<CR>

nnoremap <leader>iq :read ~/.config/vimb/queue<CR> :!rm ~/.config/vimb/queue<CR>A]<Esc>I[][<Esc>hi

nmap <c-tab> :tabNext



" fuzzy finder
nmap <c-o> :FZF<CR>



nmap <c-v> :VimtexView<CR>



" error correcting
nnoremap <BS> vb
vnoremap <BS> b




" vifm
map <leader>vf :VsplitVifm<CR>


" Plug
nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>pu :PlugUpdate<CR>


" vimtex
noremap <leader>v :vimtexView<CR>

" copy paste for vim
" nmap <C-c> :.w! ~/.config/nvim/buffer<CR>
" vmap <C-c> :w! ~/.config/nvim/buffer<CR>
" map <C-p> :r ~/.config/nvim/buffer<CR>





vnoremap <leader>d <ESC>f{%v%
vnoremap <leader>a <ESC>F{%v%

" nnoremap <space> mambmc<c-v>
vnoremap <space> <ESC>`c
vnoremap <c-h> <ESC>`ahma<c-v>`b
vnoremap <c-j> <ESC>`bjmb<c-v>`a
" vnoremap <c-k> <ESC>`akma<c-v>`b
vnoremap <c-l> <ESC>`blmb<c-v>`a

nnoremap <c-n> :noh<CR>








" noremap <c-s> :w<Enter>
noremap <C-x> :q!<CR>


noremap H ^
noremap J 5j
noremap K 5k
noremap L g_

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
tmap <c-h> <Esc><c-w>h
tmap <c-j> <Esc><c-w>j
tmap <c-k> <Esc><c-w>k
tmap <c-l> <Esc><c-w>l


" goyo
nnoremap <c-g> :Goyo<CR>



" Latex math
" nnoremap <c-space> i$$  $$<ESC>hhi
" inoremap <c-space> $$  $$<ESC>hhi




" tabs
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>n :tabprevious<CR>
nnoremap <leader>m :tabnext<CR>


" Autosave
noremap <c-a> :AutoSaveToggle<CR>



" Airline
" noremap <c-a> :AirlineToggle<CR>


" NERDTree
nmap <c-b> :NERDTreeToggle<CR>



" Neovim :Terminal
tmap <Esc> <C-\><C-n>
tmap <C-d> <Esc>:q<CR>
nmap <C-d> :split<CR>:terminal<CR>a
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

" Tagbar
nnoremap <silent> <leader>b :TagbarToggle<CR>
nnoremap <silent> <leader>B :TagbarOpenAutoClose<CR>

" Fugitive
nnoremap <silent> <leader>gs :!git add *<CR><CR>:Gstatus<CR>
nnoremap <silent> <leader>gS :!git add *<CR><CR>:Gstatus<CR>cc
augroup turbo_commit
  autocmd!
  autocmd BufEnter COMMIT_EDITMSG startinsert
augroup END
nnoremap <silent> <leader>p :wq<CR>:Gpush<CR>



" quick and dirty latex compilation
" map <leader><Space> :w<CR> :! xelatex % && bibtex main && xelatex % && xelatex %<CR><CR>
" map <leader><Space> :w<CR> :! xelatex % && bibtex main && xelatex % && xelatex % && mupdf-gl -r 150 main.pdf <CR>
"map <leader><Space> :w<CR> :! pdflatex % && mupdf-gl -r 150 main.pdf <CR>

" Quickly edit init.vim or the .vimrc (i.e. likely this file) with ' ev'
" and source it with ' sv'. Edit your current filetype settings with '
" ef'.
nnoremap <leader>ev :tabedit $MYVIMRC<CR>
nnoremap <leader>em :tabedit ~/.config/nvim/plug-config/mappings.vim<CR>
nnoremap <leader>ef :call EditFiletype()<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>eu :UltiSnipsEdit<CR>
" nnoremap <leader>er :tabedit ~/.config/README.md<CR>

autocmd FileType python nmap <leader>x :0,$!~/.config/nvim/env/bin/python -m yapf<CR>
