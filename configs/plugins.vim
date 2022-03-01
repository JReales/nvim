" NNN {{{

" use the same n³ session within a vim session
let g:nnn#session = 'local'
let g:nnn#layout = { 'window': { 'width': 0.4, 'height': 0.6, 'highlight': 'Debug' } }


" Disable default mappings
let g:nnn#set_default_mappings = 0

" Set custom mappings
" Start n³ in the current file's directory
nnoremap <leader>t :NnnPicker -o<CR>

let g:nnn#action = {
      \ '<S-t>': 'tab split',
      \ '<S-v>': 'split',
      \ '<S-h>': 'vsplit' }


" }}}

" DEVICIONS {{{

" Fix folders and files weird align
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

" }}}

" COLORS SOLARIZED {{{

let g:onedark_termcolors=256
:silent! colorscheme purify

" }}}

set noshowmode "----------------- Don't show mode (Normal, Insert...) in airline

" }}}

" FZF.VIM {{{

" Custom ag command to ignore files in node_modules, .git and include hidden files
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, {'source': 'ag --hidden --ignore .git -g ""'}, <bang>0)

" Just ignore .git folders
command! -bang -nargs=? -complete=dir DefaultFiles
  \ call fzf#vim#files(<q-args>, {'source': 'ag --hidden --skip-vcs-ignores --ignore .git -g ""'}, <bang>0)

" Mappings
nmap <leader>f        :Files<cr>
nmap <leader>F        :DefaultFiles<cr>
nmap <leader>l        :BLines<cr>
nmap <leader>L        :Lines<cr>
nmap <leader><leader> :Buffers<cr>
nmap <leader>c        :Commits<cr>
nmap <leader>a        :Ag<cr>

" Remapping alt-a, alt-d to ctrl-a, ctrl-d to use on oxs
autocmd VimEnter *
\ command! -bang -nargs=* Ag
\ call fzf#vim#ag(<q-args>, '', { 'options': '--bind ctrl-a:select-all,ctrl-d:deselect-all' }, <bang>0)

" Use o to open candidate in quickfix window
autocmd BufReadPost quickfix nnoremap <buffer> o <CR>

" Action mappings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': '-tabnew' }

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--color --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'

" Hide statusline when open fzf
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" }}}

" INDENT LINE {{{

let g:indentLine_char = '┆'

augroup indentLine_config
    autocmd!
    autocmd InsertEnter *.json setlocal concealcursor=
    autocmd InsertLeave *.json setlocal concealcursor=inc
augroup END

" }}}

" EMMET {{{

" Enable just for html, css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

let g:user_emmet_leader_key=',' " Trigger emmet with ,,

autocmd FileType html,css,scss,sass,less,typescript EmmetInstall " Support files

" }}}

" EASY MOTION {{{

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" Mappings
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>s <Plug>(easymotion-overwin-f)
map <Leader>S <Plug>(easymotion-overwin-f2)

" Powerful mapping, just type s, S, J, K is enough :))
nmap s <Plug>(easymotion-overwin-f)
nmap S <Plug>(easymotion-overwin-f2)

" }}}

" TREE PAIRS {{{

let g:pear_tree_pairs = {
  \ '(':    {'closer': ')'},
  \ '[':    {'closer': ']'},
  \ '{':    {'closer': '}'},
  \ "'":    {'closer': "'"},
  \ '"':    {'closer': '"'},
  \ '/*':   {'closer': '*/'},
  \ '<!--': {'closer': '-->'}
  \ }

let g:pear_tree_repeatable_expand = 0

" }}}

" AIRWRAP {{{

nnoremap <silent> gw :ArgWrap<CR>

" }}}

" MARKDOWN SYNTAX {{{

autocmd FileType markdown let g:indentLine_enabled=0 " Prevent markdown side effect
let g:vim_markdown_conceal = 0
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal_code_blocks = 0

" }}}

" MARDOWN-PREVIEW {{{

nmap <leader>m <Plug>MarkdownPreviewToggle

" }}}

" PRETTIER {{{

let g:prettier#autoformat = 0
let g:prettier#exec_cmd_async = 1
let g:prettier#config#single_quote = 'true'
let g:prettier#config#bracket_spacing = 'false'

" }}}

" VIM-MATCHUP {{{

let g:matchup_matchpref = {}
let g:matchup_matchpref.vue = {'tagnameonly': 1}
let g:matchup_matchpref.html = {'tagnameonly': 1}

" }}}

" VIM-ILLUMINATE {{{

hi link illuminatedWord Visual

" }}}

" VCOOLOR {{{

let g:vcoolor_map        = '<localleader>c'
let g:vcool_ins_rgba_map = '<localleader>C'

" }}}

" GOYO.VIM {{{

nnoremap <Leader>z :Goyo<CR>

" }}}

" LIMELIGHT {{{

" Config color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Itegrate with Goyo.vim
autocmd! User GoyoEnter Limelight
" autocmd! User GoyoLeave Limelight!
" A workaround for https://github.com/junegunn/goyo.vim/issues/160
autocmd! User GoyoLeave silent! source $HOME/.config/nvim/init.vim

" }}}

" VIM-BROWSER_SEARCH {{{

nmap <silent> <localleader>s <Plug>SearchNormal
vmap <silent> <localleader>s <Plug>SearchVisual

" }}}