call plug#begin('~/.config/nvim/plugged') "---------------------- Start vim plug

" COLORS, THEMES {{{

Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'dracula/vim', {'as' : 'dracula'}
Plug 'iCyMind/NeoSolarized'


" }}}

" STATUS BAR {{{

Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" }}}

" FINDER {{{

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' "-------------------------------------------- fzf in vim
Plug 'mcchrish/nnn.vim'

" }}}

" NAVIGATE {{{

Plug 'scrooloose/nerdtree' "------------------------------------------ Nerd Tree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' "-- Nerdtree syntax & Icon colors
" Plug 'ryanoasis/vim-devicons' "------------------------------------------- Icons
Plug 'easymotion/vim-easymotion' "----------- Jump around the screen like a boss
Plug 'andymass/vim-matchup' "------------- Better % and highlight matching words
Plug 'tommcdo/vim-exchange' "-------------------------------- Easy text exchange
Plug 'rhysd/clever-f.vim' "-------------------------------- Make f more powerful
Plug 'kevinhwang91/rnvimr' "--- Testing

" }}}

" SYNTAX HIGHTLIGHT {{{

Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }"  Typescript's Syntax

" Help colorize text color
Plug 'ap/vim-css-color', {
  \ 'for': [
    \ 'html',
    \ 'css',
    \ 'scss',
    \ 'sass',
    \ 'less'
    \ ] }
Plug 'Valloric/MatchTagAlways' "------- Always highlights the XML/HTML tags that enclose your cursor location
Plug 'MTDL9/vim-log-highlighting', {'for': 'log'} "----------------- For Vim Log

" Frameworks
Plug 'MaxMEllon/vim-jsx-pretty' "----------------------------------------- React
Plug 'habamax/vim-godot' "-------------------------------------------------Godot

" }}}

" FASTER CODE {{{

Plug 'tmsvg/pear-tree' "------------------------------------- Auto pair brackets
Plug 'alvan/vim-closetag' "--------------------------------- Auto close html tag
Plug 'tpope/vim-surround' "--------------------------------------- Auto surround
Plug 'tpope/vim-commentary' "------------------------------- Comment code faster
Plug 'tpope/vim-repeat' "------------------------------ dot repeat with pluggins
Plug 'Yggdroot/indentLine' "---------------------------- Indent code with v-line
Plug 'wellle/targets.vim' "--------------------- Provides additional text object
Plug 'mg979/vim-visual-multi' "--------------------------------- Multiple Cursor
Plug 'mattn/emmet-vim' "------------------------------------------ Emmet for vim

" }}}

" BEAUTIFY CODE {{{

Plug 'FooSoft/vim-argwrap' "------ Wrap and unwrap function args, list, dicts...
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'branch': 'release/1.x',
  \ 'for': [
    \ 'javascript',
    \ 'typescript',
    \ 'css',
    \ 'less',
    \ 'sass',
    \ 'scss',
    \ 'json',
    \ 'markdown',
    \ 'html' ] }

" }}}

" UTILS {{{

" identifica cuando agrego o elimino una linea
Plug 'mhinz/vim-signify'

" resaltado de sintaxis
Plug 'sheerun/vim-polyglot'

Plug 'NLKNguyen/copy-cut-paste.vim' "---------------- Copy, Paste with Clipboard
Plug 'skywind3000/asyncrun.vim' "--------------- Run async shell commands in vim
Plug 'kyoz/ezbuf.vim' "------------------------------- Fast and easy use buffers
Plug 'kyoz/npm.vim' "-------------------------- Work with npm more easier in Vim
Plug 'segeljakt/vim-silicon'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
Plug 'godlygeek/tabular', {'for': 'markdown'} "-------------- Alignment for text
Plug 'dhruvasagar/vim-table-mode',{'for': 'markdown', 'do': ':TableFormat'}
Plug 'lervag/vimtex', {'for': 'tex'} "------------------- For editing Latex file

" Performance
Plug 'yardnsm/vim-import-cost', { 'do': 'npm install' }
Plug 'tweekmonster/startuptime.vim', {'on': 'StartupTime'}

" Colors
Plug 'KabbAmine/vCoolor.vim' "------------------------------------- Color picker
Plug 'guns/xterm-color-table.vim'

" Focus
Plug 'junegunn/goyo.vim' "---------------------- Distraction-free writing in Vim
Plug 'junegunn/limelight.vim' "----------------------- Hyperfocus-writing in Vim
Plug 'RRethy/vim-illuminate' "--- Auto highlight other uses of word under cursor

" Searching
Plug 'voldikss/vim-search-me' "------------------------ Search google within vim

" }}}

" AUTOCOMPLETE {{{

Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'github/copilot.vim'

" }}}

call plug#end() "---------------------------------------- End of Vim-Plug define