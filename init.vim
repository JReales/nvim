" Script para configurar vim
"
""" visual del editor
" # numeros laterales
set number
set relativenumber

""" Plugins
call plug#begin('~/.config/nvim/plugged')

""" escritura (typing)
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

" Temas
Plug 'dracula/vim', {'as' : 'dracula'}

call plug#end()

""" Asignar tema
colorscheme dracula
