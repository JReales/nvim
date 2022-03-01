" Script para configurar vim
"
""" visual del editor
" # numeros laterales
set number
set relativenumber
" # habilitar mouse
set mouse=a
" # usar espacios en lugar de tabulaciones
set shiftwidth=1
set expandtab
set autoindent
" # sintaxis
syntax enable
syntax on

" # copia en vim lo que este en el portapapeles
set clipboard=unnamed
" # limite de colimna
set colorcolumn=80


""" Plugins
call plug#begin('~/.config/nvim/plugged')

" autocompletar parentecis
Plug 'chun-yang/auto-pairs'
" para las etiquetas de algunos lenguajes
Plug 'alvan/vim-closetag'

" para moverme entre palabras
Plug 'easymotion/vim-easymotion'

" identifica cuando agrego o elimino una linea
Plug 'mhinz/vim-signify'

" identacion de lineas
Plug 'yggdroot/indentline'

" hacer comentarios (configurar atajo)
Plug 'scrooloose/nerdcommenter'

" resaltado de sintaxis
Plug 'sheerun/vim-polyglot'

" status bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" nerdtree
Plug 'scrooloose/nerdtree'

" COC
" para auto	completado
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Temas
Plug 'dracula/vim', {'as' : 'dracula'}
Plug 'iCyMind/NeoSolarized'

call plug#end()

""" Asignar tema
"colorscheme dracula
set termguicolors  " Activa true colors en la terminal
set background=dark  " Fondo del tema: dark/light
colorscheme NeoSolarized  " Activa tema NeoSolarized

""" Configuracion atajos de teclado
" # asignacion de tecla leader
let mapleader=","

" guardar
nnoremap <Leader>w :w<CR>
" salir
nnoremap <Leader>q :q<CR>
" guardar y salir
nnoremap <Leader>wq :wq<CR>
" easymotion
nmap <Leader>s <Plug>(easymotion-s2)
" nerdtree
map <Leader>nt :NERDTreeFind<CR>


" para correr scripts en python
"autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
"autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

