" Script para configurar vim
"
""" visual del editor
" # numeros laterales
set number

""" Plugins
call plug#begin('~/.config/nvim/plugged')

" autocompletar parentecis
Plug 'chun-yang/auto-pairs'

" Temas
Plug 'dracula/vim', {'as' : 'dracula'}

call plug#end()

""" Asignar tema
colorscheme dracula
