set shiftwidth=4
set softtabstop=4
set et
set wrap
set linebreak
set shortmess+=A
set clipboard=unnamed
set nocompatible
set autoread
set autoindent
set textwidth=0
set wrapmargin=0
set tags=tags;/
set splitbelow
set hidden
"set splitright
syntax on
set backspace=indent,eol,start
filetype plugin on 
filetype indent on 
autocmd FileType python setlocal nonumber

"Options I'm not terrible sure about
"set smartindent
"set tabstop=4
"set nolist
"set ai
"set smarttab
"set shell=/bin/bash

" Change directory to the current buffer when opening files.
set autochdir

"Neovim/MacVim options
if !has('nvim')
    set guifont=Cartograph\ CF:h12
    set noballooneval
else
    set laststatus=0
    set nohlsearch

    "Set terminal to insert mode when we jump to it
    autocmd BufLeave term://* stopinsert
    autocmd TermOpen,BufEnter,BufWinEnter,WinEnter term://* startinsert

    augroup terminal_setup | au!
        autocmd TermOpen * nnoremap <buffer><LeftRelease> <LeftRelease>i
        " more stuff
    augroup end
endif

"Movement between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-N> <C-W><C-N>

"Movement between splits, terminal mode
tnoremap <C-J> <C-\><C-N><C-W><C-J>
tnoremap <C-K> <C-\><C-N><C-W><C-K>
tnoremap <C-L> <C-\><C-N><C-W><C-L>
tnoremap <C-H> <C-\><C-N><C-W><C-H>
tnoremap <C-N> <C-\><C-N>
tnoremap <C-V> <C-W><C-">* 

"Movement between tabs, buffers, and lists
map <D-A-Right> :tabnext<CR>
map <D-A-Left> :tabprev<CR>
map <D-A-Up> :tabnew<CR>
map <C-A-Right> :bn<CR>
map <C-A-Left> :bp<CR>
map <C-A-Up> :enew<CR>
map ?? :lnext<CR>
map ,, :lprevious<CR>

"Copying to clipboard when deleting
"nnoremap d "_d
"vnoremap d "_d
nnoremap x "_x
vnoremap x "_x

"Tagbar plugin:
nmap <C-b> :TagbarToggle<CR>
let g:tagbar_left = 1

"vim-solarized colors
set background=light
colors solarized
"set transparency=0
if !has('gui_running')
    let g:solarized_termcolors=256
    let g:solarized_termtrans=1
endif

"TeX conveniences
ab \e \emph
ab \b \textbf
ab \u \underline
ab \l \begin{itemize}
ab \i \item

"LaTex-Box
let g:LatexBox_latexmk_options = '-pv'
let g:LatexBox_viewer = 'open -a Preview'
"set g:tex-conceal=0

"GPG
let g:GPGUseAgent = 0
let g:GPGDefaultRecipients = ["5555555"]
let g:GPGExecutable = 'gpg2 -r 55555555' 

"Vim-R
let vimrplugin_underscore = 0
"let vimrplugin_term = "/Applications/Utilities/Terminal.app/Contents/MacOS/Terminal"
let vimrplugin_term = "/Applications/kitty.app/Contents/MacOS/kitty"
"let g:ScreenShellTerminal =  "/Applications/kitty.app/Contents/MacOS/kitty"
let g:R_assign=0
"let g:R_tmux_split=1
"let g:R_vsplit = 1 Apparently deprecated
" This will try to remap tmux bindings, ctl-b to ctl-a, but they don't really
" work..
let g:R_notmuxconf = 1

"For R piping
autocmd FileType r inoremap <buffer> >> <Esc>:normal! a %>%<CR>a 
autocmd FileType rnoweb inoremap <buffer> >> <Esc>:normal! a %>%<CR>a 
autocmd FileType rmd inoremap <buffer> >> <Esc>:normal! a %>%<CR>a 
autocmd FileType r inoremap <buffer> << <Esc>:normal! a <-<CR>a 
autocmd FileType rnoweb inoremap <buffer> << <Esc>:normal! a <-<CR>a 
autocmd FileType rmd inoremap <buffer> << <Esc>:normal! a <-<CR>a 

"Netrw
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_banner=0

" Vimwiki management
"autocmd FileType m :setlocal foldmethod=manual
let g:vimwiki_list = [ 
                      \{'path': '~/vimwiki/'}]


"Iron shortcuts (for python and other REPL)
let g:iron_map_defaults=0
let g:iron_map_extended = 0
nmap <localleader>t    <Plug>(iron-send-motion)
vmap <localleader>v    <Plug>(iron-visual-send)
nmap <localleader>r    <Plug>(iron-repeat-cmd)
nmap <localleader>l    <Plug>(iron-send-line)
nmap <localleader><CR> <Plug>(iron-cr)
nmap <localleader>i    <plug>(iron-interrupt)
nmap <localleader>q    <Plug>(iron-exit)
nmap <localleader>c    <Plug>(iron-clear)
nmap <localleader>pp    {\t}<C-S-O>

"For something like a cell-mode
nmap <localleader>]]    ?%%\\|##<CR>\t/%%\\|##<CR><C-S-O>

