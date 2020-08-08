syntax on

" set guicursor=
" set noshowmatch
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set relativenumber
set expandtab
set smartindent
set nu
set nowrap
" set smartcase
set noswapfile
" set nohlsearch
" set hidden
set nobackup
" set undodir=~/.vim/undodir
" set undofile
set incsearch
set termguicolors
set scrolloff=8
" set updatetime=300
set noshowmatch         " Don't match parentheses/brackets
set nocursorline        " Don't paint cursor line
set nocursorcolumn      " Don't paint cursor column
set lazyredraw          " Wait to redraw
set scrolljump=8        " Scroll 8 lines at a time at bottom/top

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
" set updatetime=50

" Don't pass messages to |ins-completion-menu|.
" set shortmess+=c

" set colorcolumn=80
" highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

" "Plug 'tweekmonster/gofmt.vim'
" "Plug 'tpope/vim-fugitive'
" "Plug 'vim-utils/vim-man'
" " Plug 'mbbill/undotree'
" "Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" "Plug 'vuciv/vim-bujo'

" "  I AM SO SORRY FOR DOING COLOR SCHEMES IN MY VIMRC, BUT I HAVE
" "  TOOOOOOOOOOOOO
" "Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'
" Plug 'sonph/onehalf', {'rtp': 'vim/'}
"Plug 'sainnhe/gruvbox-material'
"Plug 'phanviet/vim-monokai-pro'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'
"Plug '/home/mpaulson/personal/vim-be-good'
" Plug 'git@github.com:Valloric/YouCompleteMe.git'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'jremmen/vim-ripgrep'

" my own vim plugin
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
" Plug 'kien/ctrlp.vim'
" Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline-themes'
" Plug 'pangloss/vim-javascript'
Plug 'jparise/vim-graphql'
" Plug 'mxw/vim-jsx'
Plug 'sheerun/vim-polyglot'
" Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale'
" Plug 'prettier/vim-prettier', {
  " \ 'do': 'yarn install',
  " \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
"Plug 'leafgarland/typescript-vim'
" Plug 'sbdchd/neoformat'
" Plug 'maxmellon/vim-jsx-pretty'

call plug#end()

" " gruvbox
" "colorscheme gruvbox
" "set background=dark
" "let g:gruvbox_contrast_dark = 'hard'
" "if exists('+termguicolors')
" "let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" "let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" "endif
" "let g:gruvbox_invert_selection='0'

" " onehalf
" " set t_Co=256
" " set cursorline
colorscheme one
set background=dark
" colorscheme onehalfdark
" let g:airline_theme='onehalfdark'



" --- The Greatest plugin of all time.  I am not bias
" let g:vim_be_good_floating = 0

" --- vim go (polyglot) settings.
"let g:go_highlight_build_constraints = 1
"let g:go_highlight_extra_types = 1
"let g:go_highlight_fields = 1
"let g:go_highlight_functions = 1
"let g:go_highlight_methods = 1
"let g:go_highlight_operators = 1
"let g:go_highlight_structs = 1
"let g:go_highlight_types = 1
"let g:go_highlight_function_parameters = 1
"let g:go_highlight_function_calls = 1
"let g:go_highlight_generate_tags = 1
"let g:go_highlight_format_strings = 1
"let g:go_highlight_variable_declarations = 1
"let g:go_auto_sameids = 1

" if executable('rg')
    " let g:rg_derive_root='true'
" endif

" command! -bang -nargs=* -complete=file Rg call fzf#vim#grep('rg --files --hidden --follow --smart-case --glob "!.git/*" --glob "!node_modules/*"' . <q-args>, 1, fzf#vim#with_preview(), <bang>0)

" let loaded_matchparen = 1
let mapleader = " "

"let g:netrw_browse_split = 2
"let g:netrw_banner = 0
"let g:netrw_winsize = 25

nnoremap <leader>prr :CocSearch <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>phw :h <C-R>=expand("<cword>")<CR><CR>
"nnoremap <leader>h :wincmd h<CR>
"nnoremap <leader>j :wincmd j<CR>
"nnoremap <leader>k :wincmd k<CR>
"nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>pf :Files<CR>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>
nnoremap <Leader>ee oif err != nil {<CR>log.Fatalf("%+v\n", err)<CR>}<CR><esc>kkI<esc>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" "my own command
inoremap jj <ESC>

" "vim TODO
"nmap <Leader>tu <Plug>BujoChecknormal
"nmap <Leader>th <Plug>BujoAddnormal
"let g:bujo#todo_file_path = $HOME . "/.cache/bujo"

" Vim with me
"nnoremap <leader>vwm :colorscheme gruvbox<bar>:set background=dark<CR>
"nmap <leader>vtm :highlight Pmenu ctermbg=gray guibg=gray

" vnoremap X "_d
" inoremap <C-c> <esc>

"function! s:check_back_space() abort
"let col = col('.') - 1
"return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

"inoremap <silent><expr> <TAB>
            "\ pumvisible() ? "\<C-n>" :
            "\ <SID>check_back_space() ? "\<TAB>" :
            "\ coc#refresh()

"command! -nargs=0 Prettier :CocCommand prettier.formatFile
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"inoremap <silent><expr> <C-space> coc#refresh()

"" GoTo code navigation.
"nmap <leader>gd <Plug>(coc-definition)
"nmap <leader>gy <Plug>(coc-type-definition)
"nmap <leader>gi <Plug>(coc-implementation)
"nmap <leader>gr <Plug>(coc-references)
"nmap <leader>rr <Plug>(coc-rename)
"nmap <leader>rpr :CocSearch <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>g[ <Plug>(coc-diagnostic-prev)
"nmap <leader>g] <Plug>(coc-diagnostic-next)
"nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
"nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
"nnoremap <leader>cr :CocRestart

"" Sweet Sweet FuGITive
"nmap <leader>gh :diffget //3<CR>
"nmap <leader>gu :diffget //2<CR>
"nmap <leader>gs :G<CR>

" fun! TrimWhitespace()
    " let l:save = winsaveview()
    " keeppatterns %s/\s\+$//e
    " call winrestview(l:save)
" endfun

" augroup highlight_yank
    " autocmd!
    " autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank("IncSearch", 50)
" augroup END

" autocmd BufWritePre * :call TrimWhitespace()

" my nerdtree setup
" NERDTree
" How can I close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERTree.isTabTree()) | q | endif
" Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>
"map  <C-l> :tabn<CR>
"map  <C-h> :tabp<CR>
"map  <C-n> :tabnew<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
let NERDSpaceDelims=1
let g:NERDTreeChDirMode=2
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMosue>'
let g:NERDTreeMouseMode=3
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeGitStatusWithFlags = 1
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * call NERDTreeAddKeyMap({ 'key': '<2-LeftMouse>', 'scope': "FileNode", 'callback': "OpenInTab", 'override':1 })
"function! OpenInTab(node)
"call a:node.activate({'reuse': 'all', 'where': 't'})
"endfunction
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * NERDTree

" sync open file with NERDTree
" " Check if NERDTree is open or active
function! IsNERDTreeOpen()
    return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
    if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
        NERDTreeFind
        wincmd p
    endif
endfunction

"Allow NERDTree to show hidden files"
let NERDTreeShowHidden=1






"Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()

" copy and paste with clipboard
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p
inoremap <S-Tab> <esc>la

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-w> <C-w>w
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>


" Other
let g:airline_powerline_fonts = 1
set mouse=a
" coc config
let g:coc_global_extensions = [
            \'coc-snippets',
            \'coc-pairs',
            \'coc-json',
            \]
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

nnoremap <silent> K :call CocAction('doHover')<CR>
function! ShowDocIfNoDiagnostic(timer_id)
  if (coc#util#has_float() == 0)
    silent call CocActionAsync('doHover')
  endif
endfunction

function! s:show_hover_doc()
  call timer_start(500, 'ShowDocIfNoDiagnostic')
endfunction

autocmd CursorHoldI * :call <SID>show_hover_doc()
autocmd CursorHold * :call <SID>show_hover_doc()

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
" command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }

" let g:ale_sign_error = '❌'
" let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 1
" let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

" Fzf
let $FZF_DEFAULT_OPTS='--reverse'
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }

nnoremap <C-p> :Files<CR>
nnoremap <C-o> :Buffers<CR>
nnoremap <C-g> :GFiles<CR>
nnoremap <C-f> :Rg<CR> 

nnoremap <C-t> :bel terminal<CR>

" let g:node_client_debug=1


" autoformat
" let g:autoformat_autoindent = 0
" let g:autoformat_retab = 0
" let g:autoformat_remove_trailing_spaces = 0
" autocmd BufWrite * :Prettier
" autocmd BufWrite *.js Neoformatnoremap jj <ESC>
