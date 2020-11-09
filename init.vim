" allow mouse to click 
set relativenumber
set mouse=a
set encoding=utf-8
set termencoding=utf-8
set updatetime=100
" open new split panes to right and below
set splitright
set splitbelow
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set nu
set nowrap
set noswapfile
set laststatus=2

"set hidden  " allow buffer switching without saving
"set showtabline=2  " always show tabline


call plug#begin("~/.vim/plugged")
	"" Neovim Lua Development
	Plug 'tjdevries/nlua.nvim'

  " Theme
  "Plug 'morhetz/gruvbox'
	"Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
	Plug 'ayu-theme/ayu-vim'
	
	"Plug 'edkolev/tmuxline.vim'
	" Tab manager"
	"Plug 'pacha/vem-tabline'
  "Plug 'romgrk/barbar.nvim'

  " Language Client
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	"Plug 'neovim/nvim-lspconfig'
	"Plug 'nvim-lua/completion-nvim'
	"Plug 'nvim-lua/diagnostic-nvim'
	"Plug 'nvim-lua/lsp-status.nvim'
	"" Neovim lsp Plugins
  "Plug 'tjdevries/lsp_extensions.nvim'

  " TypeScript Highlighting
  " Plug 'leafgarland/typescript-vim'
  " Plug 'peitalin/vim-jsx-typescript'
	Plug 'sheerun/vim-polyglot'
	Plug 'udalov/kotlin-vim'


	" Git 
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'airblade/vim-gitgutter'
	Plug 'tpope/vim-fugitive'
	Plug 'kdheepak/lazygit.nvim'

  " File Explorer with Icons
	Plug 'scrooloose/nerdtree'
	Plug 'ryanoasis/vim-devicons'

   " File Search
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-lua/telescope.nvim' , { 'branch': 'revert-157-results_width'}
	Plug 'kyazdani42/nvim-web-devicons'
	"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	"Plug 'junegunn/fzf.vim'

	" comment code with iterms settings
	Plug 'scrooloose/nerdcommenter'
	Plug 'tpope/vim-commentary'


	" Auto formatting and import ordering
	Plug 'w0rp/ale'

	" python"
	Plug 'davidhalter/jedi-vim'

	"android"
	Plug 'hsanson/vim-android'
	
	" The status bar
	"Plug 'tjdevries/express_line.nvim'
	Plug 'itchyny/lightline.vim'
	Plug 'taohexxx/lightline-buffer'
	let g:lightline = { 
			\  'colorscheme': 'challenger_deep',
			\  'active': {
			\    'left': [['mode', 'paste'], ['readonly', 'relativepath', 'modified', 'cocstatus', 'gitbranch']],
			\  },
			"\ 'component_function': {
			"\   'cocstatus': 'coc#status',
			"\   'gitbranch': 'FugitiveHead',
			"\   'bufferinfo': 'lightline#buffer#bufferinfo',
			"\ },
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
"colorscheme challenger_deep
"let ayucolor="light"
"let ayucolor="mirage"*/
let ayucolor="dark"
colorscheme ayu
"colorscheme gruvbox
":set bg=dark


autocmd VimEnter * NERDTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreIgnore = []
let g:NERDTreeStatusline = ''

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-v> :NERDTreeToggle<CR>
nnoremap <C-i> :NERDTreeFind<CR>


" Project Navigation
"==============================================================

if has('nvim-0.5')
  " telescope
	nnoremap <C-g> :lua require('telescope.builtin').git_files()<CR>
	let $FZF_DEFAULT_COMMAND='rg --files'
	nnoremap <C-p> :Files<CR>

	let $FZF_DEFAULT_OPTS='--reverse'
	let g:fzf_layout = { 'window': {'width': 0.8, 'height': 0.8} }

	nnoremap <C-f> :lua require('telescope.builtin').live_grep()<CR>
else
	" requires silversearcher-ag
	" used to ignore gitignore files
  let $FZF_DEFAULT_COMMAND='rg --files'
	"let $FZF_DEFAULT_COMMAND = 'ag -g ""'
	" fzf config
	let $FZF_DEFAULT_OPTS='--reverse'
	let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
	nnoremap <C-p> :Files<CR>
	nnoremap <C-o> :Buffers<CR>
	nnoremap <C-g> :GFiles<CR>
	nnoremap <C-f> :Rg<CR>
endif


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

" resize split size
nnoremap <Leader>- :vertical resize -10<cr>
nnoremap <Leader>= :vertical resize +10<cr>
nnoremap <Leader>[ :res -5<cr>
nnoremap <Leader>] :res +5<cr>

" fugitive mapping
nmap <leader>gs :G<CR>
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>


" my own command
inoremap jj <ESC>


"set completeopt=menuone,noinsert,noselect
"let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
"lua require'nvim_lsp'.tsserver.setup{on_attach=require'completion'.on_attach}
"let g:completion_enable_auto_popup = 1

"let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
"lua require'nvim_lsp'.tsserver.setup{ on_attach=require'completion'.on_attach }
":lua << END
  "require'nvim_lsp'.tsserver.setup{on_attach=require'completion'.on_attach}
"END

" coc config {{
nmap <silent> gD <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

let g:coc_global_extensions = [
            \'coc-snippets',
            \'coc-pairs',
            \'coc-json',
            \'coc-python',
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
noremap <Leader>v :Commentary<cr>
let NERDTreeHighlightCursorline = 0

" ale config
let g:ale_fixers = {
 \ 'javascript': ['eslint'],
 \ 'python': ['black', 'isort'],
 \ }
" Disable ale
let g:ale_disable_lsp = 1
" Check Python files with flake8 and pylint.
let b:ale_linters = { 'python': ['flake8'] }
" Disable warnings about trailing whitespace for Python files.
let b:ale_warn_about_trailing_whitespace = 0


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


" buffer config
"nmap <leader>h <Plug>vem_move_buffer_left-
"nmap <leader>l <Plug>vem_move_buffer_right-
"nmap <leader>p <Plug>vem_prev_buffer-
"nmap <leader>n <Plug>vem_next_buffer-
"nmap <leader>x <Plug>vem_delete_buffer-

"nnoremap <leader>1 :1tabnext<CR>
"nnoremap <leader>2 :2tabnext<CR>
"nnoremap <leader>3 :3tabnext<CR>
"nnoremap <leader>4 :4tabnext<CR>
"nnoremap <leader>5 :5tabnext<CR>
"nnoremap <leader>6 :6tabnext<CR>
"nnoremap <leader>7 :7tabnext<CR>
"nnoremap <leader>8 :8tabnext<CR>
"nnoremap <leader>9 :9tabnext<CR>

"" Magic buffer-picking mode
"nnoremap <silent> <C-s> :BufferPick<CR>
"" Sort automatically by...
"nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
"nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>
"" Move to previous/next
"nnoremap <silent> <Leader>[ :BufferPrevious<CR>
"nnoremap <silent> <Leader>] :BufferNext<CR>
"nnoremap <silent> <Leader>d :bd#<CR>
"" Re-order to previous/next
"nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
"nnoremap <silent>    <A->> :BufferMoveNext<CR>
"" Goto buffer in position...
"nnoremap <silent>    <A-1> :BufferGoto 1<CR>
"nnoremap <silent>    <A-2> :BufferGoto 2<CR>
"nnoremap <silent>    <A-3> :BufferGoto 3<CR>
"nnoremap <silent>    <A-4> :BufferGoto 4<CR>
"nnoremap <silent>    <A-5> :BufferGoto 5<CR>
"nnoremap <silent>    <A-6> :BufferGoto 6<CR>
"nnoremap <silent>    <A-7> :BufferGoto 7<CR>
"nnoremap <silent>    <A-8> :BufferGoto 8<CR>
"nnoremap <silent>    <A-9> :BufferLast<CR>
 "Move to the next buffer
nmap <Leader>n :bnext<CR>
 "Move to the previous buffer
nmap <Leader>m :bprevious<CR>
" buffer manage
" open file with previous line number
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" Tab navigate config
nnoremap <Leader>t :tabe %<cr>
"nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>
nnoremap <Leader>1 :1tabnext<CR>
nnoremap <Leader>2 :2tabnext<CR>
nnoremap <Leader>3 :3tabnext<CR>
nnoremap <leader>4 :4tabnext<CR>
nnoremap <leader>5 :5tabnext<CR>
nnoremap <leader>6 :6tabnext<CR>
"nnoremap <leader>7 :7tabnext<CR>
"nnoremap <leader>8 :8tabnext<CR>
"nnoremap <leader>9 :9tabnext<CR>

" Git config
nnoremap <silent> <leader>lg :LazyGit<CR>


 "lightline-buffer ui settings
 "replace these symbols with ascii characters if your environment does not support unicode
let g:lightline_buffer_logo = ' '
let g:lightline_buffer_readonly_icon = ''
let g:lightline_buffer_modified_icon = '✭'
let g:lightline_buffer_git_icon = ' '
let g:lightline_buffer_ellipsis_icon = '..'
let g:lightline_buffer_expand_left_icon = '◀ '
let g:lightline_buffer_expand_right_icon = ' ▶'
let g:lightline_buffer_active_buffer_left_icon = ''
let g:lightline_buffer_active_buffer_right_icon = ''
let g:lightline_buffer_separator_icon = '  '

" enable devicons, only support utf-8
" require <https://github.com/ryanoasis/vim-devicons>
let g:lightline_buffer_enable_devicons = 1

" lightline-buffer function settings
let g:lightline_buffer_show_bufnr = 1

" :help filename-modifiers
let g:lightline_buffer_fname_mod = ':t'

" hide buffer list
let g:lightline_buffer_excludes = ['vimfiler']

" max file name length
let g:lightline_buffer_maxflen = 30

" max file extension length
let g:lightline_buffer_maxfextlen = 3

" min file name length
let g:lightline_buffer_minflen = 16

" min file extension length
let g:lightline_buffer_minfextlen = 3

" reserve length for other component (e.g. info, close)
let g:lightline_buffer_reservelen = 20
