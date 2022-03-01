" GENERAL {{{

let mapleader = "," 
let maplocalleader = "\\"

" Use black hole for delete. Don't want to store in register with dd.
" For cut, use visual and x instead
nnoremap d "_d
vnoremap d "_d

" also for yank
" replace currently selected text with default register without yanking it
vnoremap <leader>p "_dP

" guardar
nnoremap <Leader>w :w<CR>
" salir
nnoremap <Leader>q :q<CR>
" forzar salida
nnoremap <Leader>q! :qq<CR>
" guardar y salir
nnoremap <Leader>wq :wq<CR>
" easymotion
nmap <Leader>s <Plug>(easymotion-s2)
" nerdtree
map <Leader>nt :NERDTreeFind<CR>

" Save all buffers
nnoremap <leader>w :wa<CR>
" }}}

" BUFFER MOTIONS {{{
nnoremap gB :bprevious <CR> 
nnoremap gb :bnext <CR>
" }}}

" USEFUL {{{

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" }}}

" DISABLED {{{

" Disable Ctrl-Z
nnoremap <c-z> <NOP>

" Disable arrow keys (Vim don't need this)
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>

" Disable ex mode
nnoremap Q <Nop>

" }}}

" WINDOW RESIZE {{{

if bufwinnr(1)
  noremap <silent> <C-H> :vertical resize -4<CR>
  noremap <silent> <C-L> :vertical resize +4><CR>
  noremap <silent> <C-J> :resize -4<CR>
  noremap <silent> <C-K> :resize +4<CR>
endif

" }}}
