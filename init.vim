" allow mouse to click 
set relativenumber
set mouse=a
set encoding=utf-8
set termencoding=utf-8
set updatetime=100
" open new split panes to right and below
set splitright
set splitbelow
set tabstop=2 softtabstop=2
set shiftwidth=2
set smartindent
set nu
set nowrap

"set hidden  " allow buffer switching without saving
"set showtabline=2  " always show tabline


call plug#begin("~/.vim/plugged")
  " Theme
	Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
	 "Plug 'ayu-theme/ayu-vim'
	"Plug 'sainnhe/forest-night'

  " Language Client
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Plug 'neovim/nvim-lspconfig'

  " TypeScript Highlighting
  " Plug 'leafgarland/typescript-vim'
  " Plug 'peitalin/vim-jsx-typescript'
	Plug 'sheerun/vim-polyglot'
	"Plug 'nvim-treesitter/nvim-treesitter'

	" Git 
	Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'airblade/vim-gitgutter'

  " File Explorer with Icons
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'

  " File Search
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

	"Plug 'nvim-lua/popup.nvim'
  "Plug 'nvim-lua/plenary.nvim'
  "Plug 'nvim-lua/telescope.nvim'

	" comment code with iterms settings
	Plug 'scrooloose/nerdcommenter'

	" Auto formatting and import ordering
	Plug 'w0rp/ale'

	" The status bar
	Plug 'itchyny/lightline.vim'
	Plug 'taohexxx/lightline-buffer'
	let g:lightline = { 
			\  'colorscheme': 'challenger_deep',
			\  'active': {
			\    'left': [['mode', 'paste'], ['readonly', 'relativepath', 'modified', 'cocstatus', 'gitbranch']],
			\  },
			\ 'component_function': {
			\   'cocstatus': 'coc#status',
			\   'gitbranch': 'FugitiveHead',
      \   'bufferinfo': 'lightline#buffer#bufferinfo',
			\ },
			"\ 'tabline': {
    "\   'left': [ [ 'bufferinfo' ],
    "\             [ 'separator' ],
    "\             [ 'bufferbefore', 'buffercurrent', 'bufferafter' ], ],
    "\   'right': [ [ 'close' ], ],
    "\ },
    "\ 'component_expand': {
    "\   'buffercurrent': 'lightline#buffer#buffercurrent',
    "\   'bufferbefore': 'lightline#buffer#bufferbefore',
    "\   'bufferafter': 'lightline#buffer#bufferafter',
    "\ },
    "\ 'component_type': {
    "\   'buffercurrent': 'tabsel',
    "\   'bufferbefore': 'raw',
    "\   'bufferafter': 'raw',
    "\ },
    "\ 'component': {
    "\   'separator': '',
    "\ }
			\}
 "Plug 'vim-airline/vim-airline'
 "Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Enable theming support
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
 colorscheme challenger_deep
 "let ayucolor="mirage"
" let ayucolor="dark"
 "colorscheme ayu

autocmd VimEnter * NERDTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>


" requires silversearcher-ag
" used to ignore gitignore files
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
" fzf config
let $FZF_DEFAULT_OPTS='--reverse'
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
nnoremap <C-p> :Files<CR>
nnoremap <C-o> :Buffers<CR>
nnoremap <C-g> :GFiles<CR>
nnoremap <C-f> :Rg<CR> 

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

" use ctrl+hjkl to move between split/vsplit panels
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" copy and paste with clipboard
let mapleader = " "
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p
inoremap <S-Tab> <esc>la

" my own command
inoremap jj <ESC>

" coc config {{
"let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
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
inoremap <silent><expr> <Tab>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<Tab>" :
			\ coc#refresh()
" }}

" commenter with iterms
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" ale config
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }

"let g:ale_sign_error = '❌'
"let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 1

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" open terminal on ctrl+;
" uses zsh instead of bash
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>e

" airline config
" Move to the next buffer
nmap <Leader>l :bnext<CR>
" Move to the previous buffer
nmap <Leader>h :bprevious<CR>


" lightline-buffer ui settings
" replace these symbols with ascii characters if your environment does not support unicode
"let g:lightline_buffer_logo = ' '
"let g:lightline_buffer_readonly_icon = ''
"let g:lightline_buffer_modified_icon = '✭'
"let g:lightline_buffer_git_icon = ' '
"let g:lightline_buffer_ellipsis_icon = '..'
"let g:lightline_buffer_expand_left_icon = '◀ '
"let g:lightline_buffer_expand_right_icon = ' ▶'
"let g:lightline_buffer_active_buffer_left_icon = ''
"let g:lightline_buffer_active_buffer_right_icon = ''
"let g:lightline_buffer_separator_icon = '  '

"" enable devicons, only support utf-8
"" require <https://github.com/ryanoasis/vim-devicons>
"let g:lightline_buffer_enable_devicons = 1

"" lightline-buffer function settings
"let g:lightline_buffer_show_bufnr = 1

"" :help filename-modifiers
"let g:lightline_buffer_fname_mod = ':t'

"" hide buffer list
"let g:lightline_buffer_excludes = ['vimfiler']

"" max file name length
"let g:lightline_buffer_maxflen = 30

"" max file extension length
"let g:lightline_buffer_maxfextlen = 3

"" min file name length
"let g:lightline_buffer_minflen = 16

"" min file extension length
"let g:lightline_buffer_minfextlen = 3

"" reserve length for other component (e.g. info, close)
"let g:lightline_buffer_reservelen = 20
