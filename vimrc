" setup pathogen
execute pathogen#infect()
syntax enable
filetype plugin indent on
filetype plugin on

set nocompatible
set visualbell
set breakindent
set backspace=2 "make backspace work like other text editors
"set python style regex for search
nnoremap / /\v
vnoremap / /\v

" Case sensitivity for / search
set ignorecase
set smartcase
set incsearch
set hlsearch

au FocusLost * :wa

" Plugin Shortcuts
nmap <leader>nt :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.snippets_custom.json')), "\n"))
autocmd filetype html,css,scss,php imap <leader><leader> <c-y>,
autocmd filetype html,php vmap <leader><leader> <c-y>,

autocmd BufNewFile,BufRead *.js inoremap <c-b> <esc>0d$:read! echo '<c-r>"' \| babel --blacklist useStrict <cr>{dd}i
autocmd BufNewFile,BufRead *.js vnoremap <c-b> dk:read! echo '<c-r>"' \| babel --blacklist useStrict <cr>
autocmd BufNewFile,BufRead *.js nnoremap <c-b> dk:read! echo '<c-r>"' \| babel --blacklist useStrict <cr>




" CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_working_path_mode = 'ra'
map <leader>/ :CtrlPLine<CR>
map <leader>r :CtrlPMRU<CR>

" Leader Shortcuts
" Save file
map <leader>s <ESC>:w<CR>
imap <leader>s <ESC>:w<CR>
nmap <c-s> :w<CR>
imap <c-s> :w<CR>a

" Quit Vim
map <leader>q <ESC>:q<CR>
imap <leader>q <ESC>:q<CR>

" Unmap the arrow keys
no <left> <<
no <right> >>
no <up> ddkP
no <down> ddp
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

" Set tabkey to insert 4 spaces
set sw=4 ts=4 et
au FileType html,css,scss,php setl sw=2 sts=2 et

" Linenumbers
set relativenumber 

" Stop D deleting itself in insert mode
ino <D> <Nop>

" typos
iabbr ture true
iabbr Ture True
iabbr flase false
iabbr Flase False

" shift to jump paragraphs
nnoremap K {
nnoremap J }
vnoremap K {
vnoremap J }
nnoremap dK d{
nnoremap dJ d}
nnoremap cK c{
nnoremap cJ c}

"shortcuts for regular but hard to reach keys
imap jj <esc>
cmap jj <esc>
nmap <space> :
vmap <space> :

autocmd InsertEnter * :set number 
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber 
autocmd InsertLeave * :set nonumber

"nnoremap ci( f(lct)
"nnoremap ci[ f[lct] 
"nnoremap ci{ f{lct}
"nnoremap ci< f<lct>

"colours
set t_Co=256
set background=light
colorscheme PaperColor

"markdown
autocmd BufNewFile,BufRead *.md nmap <leader>h1 yypVr=k
autocmd BufNewFile,BufRead *.md nmap <leader>h2 yypVr-k

"select css section
nmap gg ^vf{%$
