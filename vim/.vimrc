set nu
syntax on
map <F2> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>t :CommandT<CR>
set t_Co=256

colorscheme desert

" TAB versus spaces
function! Tabs()
    set noexpandtab		" Treat TAB as TABS
    set tabstop=4		" TAB is actually 4 spaces
    set shiftwidth=4	" Doing >> on a block whill shift it one tab (based on ts setting above)
    set softtabstop=4   " makes the spaces feel like real tabs
endfunction

autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" SPACES versus tabs
function! Spaces()
    set expandtab		" Treat TAB as spacesa
    set tabstop=4		" TAB is actually 4 spaces
    set shiftwidth=4	" Doing >> on a block whill shift it one tab (based on ts setting above)
    set softtabstop=4   " makes the spaces feel like real tabs
endfunction

set mouse=a			" Enable mouse usage (all modes) in terminals
set showcmd			" Show (partial) command in status line.
set number			" Show line numbers
set showmatch		" Show matching brackets/braces/parantheses.
set cinwords=if,else,while,do,for,switch,case	" Which keywords should indent 
set cindent		" indent on cinwords
set fileencodings=utf-8	" UTF-8 encoding
set encoding=utf-8 " UTF-8 encoding
set noerrorbells visualbell t_vb= " No beeps, or visual bell
autocmd GUIEnter * set visualbell t_vb= " No visual bell after GUI loaded
set laststatus=2    " Show info in ruler
set statusline=%F%m%r%h%w\ (%l/%L,%v)\ %p%%
set statusline+=%=
set statusline+=[%{strlen(&ft)?&ft:'(none)'}\ %{&encoding}]
set wildmode=longest,list,full " Let TAB completion behave like bash's
set showtabline=2	" Always show tab line

" tab navigation
:nmap <C-Tab> :tabprevious<CR>
:nmap <D-x> :tabnext<CR>
:imap <C-Tab> <Esc>:tabprevious<CR>i
:imap <D-x> <Esc>:tabnext<CR>i
:nmap <C-a> :tabnew<CR>
:imap <C-a> <Esc>:tabnew<CR>
:map <C-x> :q<CR>
:nmap <C-s> :w<CR>
:imap <C-s> <Esc>:w<CR>

map <leader>g :NERDTreeToggle<CR>
map <leader>l :NERDTreeFind<CR>
set keywordprg=pman

