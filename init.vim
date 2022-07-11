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
"set nosmartindent
filetype plugin on
filetype indent on
set autoindent
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
    Plug 'morhetz/gruvbox'
	Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
	Plug 'ayu-theme/ayu-vim'
	Plug 'joshdick/onedark.vim'

	" Plug 'rhysd/vim-color-spring-night'
	" Plug 'catppuccin/nvim', {'as': 'catppuccin'}
	" Plug 'rmehri01/onenord.nvim', { 'branch': 'main' }
	" Plug 'mangeshrex/uwu.vim'
	" Plug 'ajmwagar/vim-deus'

	
	"Plug 'edkolev/tmuxline.vim'
	" Tab manager"
	"Plug 'pacha/vem-tabline'
	"Plug 'romgrk/barbar.nvim'

	"Language Client
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	"" Neovim lsp Plugins
	"Plug 'neovim/nvim-lspconfig'
	"Plug 'nvim-lua/completion-nvim'
	"Plug 'nvim-lua/diagnostic-nvim'
	"Plug 'nvim-lua/lsp-status.nvim'
  "Plug 'tjdevries/lsp_extensions.nvim'

  " TypeScript Highlighting
  " Plug 'leafgarland/typescript-vim'
  " Plug 'peitalin/vim-jsx-typescript'
	Plug 'sheerun/vim-polyglot'
	Plug 'vim-python/python-syntax'
	"Plug 'udalov/kotlin-vim'
	"golang"
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	"android"
	"Plug 'hsanson/vim-android'


	" markdown preview
	Plug 'ellisonleao/glow.nvim'

	" Git 
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'airblade/vim-gitgutter'
	Plug 'tpope/vim-fugitive'
	Plug 'kdheepak/lazygit.nvim'
	Plug 'rbong/vim-flog'
	"Plug 'sjl/gundo.vim'

  " File Explorer with Icons
	" Plug 'kyazdani42/nvim-web-devicons' " for file icons
	" Plug 'kyazdani42/nvim-tree.lua'
	Plug 'preservim/nerdtree'
	"Plug 'ryanoasis/vim-devicons'

   " File Search
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim' , { 'branch': 'various_fixes'}
	"Plug 'nvim-telescope/telescope-fzy-native.nvim' ", { 'branch': 'revert-157-results_width'}
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

	" comment code with iterms settings
	Plug 'scrooloose/nerdcommenter'
	Plug 'tpope/vim-commentary'

	" juptyer notebook 
	Plug 'untitled-ai/jupyter_ascending.vim'

	" Auto formatting and import ordering
	Plug 'w0rp/ale'
	Plug 'rust-lang/rust.vim'

	" python"
	"Plug 'davidhalter/jedi-vim'

	"terminal"
	Plug 'caenrique/nvim-toggle-terminal'

	
	" The status bar
	"Plug 'tjdevries/express_line.nvim'
	Plug 'itchyny/lightline.vim'
	Plug 'taohexxx/lightline-buffer'

	" \  'colorscheme': 'catppuccin',
	call lightline#colorscheme()
	let g:lightline = { 
			\  'colorscheme': 'onedark',
			\  'active': {
			\   'left': [['mode', 'paste'], ['readonly', 'relativepath', 'modified', 'cocstatus']],
			\	'right': [ [ 'lineinfo' ],
			\              [ 'gitbranch' ],
			\              [ 'fileformat', 'fileencoding', 'filetype' ] ]
			\  },
			\ 'component_function': {
			\   'gitbranch': 'FugitiveHead',
			\ },
			\}
			"\   'cocstatus': 'coc#status',
			"\   'bufferinfo': 'lightline#buffer#bufferinfo',
			" \  'colorscheme': 'challenger_deep',

call plug#end()

" Enable theming support
if (has("termguicolors"))
 set termguicolors
endif

" syntax highlight go
au BufRead,BufNewFile *.go set filetype=go

" Theme
syntax enable
" colorscheme challenger_deep
"let ayucolor="light"
let ayucolor="mirage"
"let ayucolor="dark"
" colorscheme uwu
" colorscheme ayu
" colorscheme catppuccin
" colorscheme spring-night
" colorscheme onenord
colorscheme onedark
"
" colorscheme gruvbox
" let g:gruvbox_contrast_dark = 'medium'
" let g:gruvbox_italic='1'
" let g:gruvbox_sign_column='bg0'
" let g:gruvbox_invert_selection=0
" let g:gruvbox_termcolors=256
" hi GruvboxRed guifg=#d75151


"colorscheme seoul256
"set background=dark
"let g:seoul256_background = 233
":set bg=dark
"colorscheme deus
"colorscheme spring-night
"hi Normal guifg=#d6deeb ctermfg=253 guibg=#172f42 ctermbg=233 gui=NONE cterm=NONE
"hi LineNr guifg=#CBCCC6



let g:python_highlight_all = 1



" autocmd VimEnter * LuaTree
" nnoremap <C-v> :LuaTreeToggle<CR>
" nnoremap <leader>r :LuaTreeRefresh<CR>
" nnoremap <C-i> :LuaTreeFindFile<CR>
" highlight LuaTreeFolderName guifg=#E6B450
" set termguicolors " this variable must be enabled for colors to be applied properly

" terminal
nnoremap <silent> <C-z> :ToggleTerminal<Enter>
tnoremap <silent> <C-z> <C-\><C-n><Enter>


" autocmd VimEnter * NvimTree
" nnoremap <C-v> :NvimTreeToggle<CR>
" nnoremap <leader>r :NvimTreeRefresh<CR>
" nnoremap <C-i> :NvimTreeFindFile<CR>

autocmd VimEnter * NERDTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
"let g:NERDTreeWinPos = "right"

"" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-v> :NERDTreeToggle<CR>
nnoremap <C-i> :NERDTreeFind<CR>
augroup nerdtreedisablecursorline
	autocmd!
	autocmd FileType nerdtree setlocal nocursorline
augroup end


" Project Navigation
"==============================================================

let useTelescope = 'true'
if has('nvim-0.5') && useTelescope == 'true'
  "telescope
lua <<EOF
require('telescope').setup {
	defaults = {
		color_devicons=true
	}
}
EOF
	let $FZF_DEFAULT_COMMAND='rg --files'

	let $FZF_DEFAULT_OPTS='--reverse'
	let g:fzf_layout = { 'window': {'width': 0.8, 'height': 0.8} }
    "nnoremap <C-g> <cmd>Telescope find_files<cr>
	""nnoremap <C-f> <cmd>Telescope live_grep<cr>
	"nnoremap <C-f> :lua require('telescope.builtin').live_grep({default_icon=false,prompt_position='top',color_devicons=false,prompt_prefix=🔍 })<CR>
	"nnoremap <C-g> :lua require('telescope.builtin').git_files({previewer = false})<CR>
	nnoremap <C-g> <cmd>Telescope find_files<cr>
	nnoremap <C-f> <cmd>Telescope live_grep<cr>
	"nnoremap <C-p> <cmd>Telescope git_files<cr>
	nnoremap <C-p> <cmd>Telescope buffers<cr>

	"lua require('telescope').setup({defaults={file_sorter = require('telescope.sorters').get_fzy_sorter}})



	"nnoremap <C-p> :Files<CR>
else
	" requires silversearcher-ag
	" used to ignore gitignore files
	"let $FZF_DEFAULT_COMMAND='rg --files'
	"let $FZF_DEFAULT_COMMAND = 'ag -g ""'
	" fzf config
	let $FZF_DEFAULT_OPTS='--reverse'
	let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }

	command! -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview({'options': '--delimiter : --nth 2..'}), <bang>0)
	let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'Ignore'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }

	"nnoremap <C-p> :Files<CR>
	nnoremap <C-o> :Buffers<CR>
	nnoremap <C-g> :GFiles<CR>
	nnoremap <C-f> :Rg<CR>
endif


" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

" run python script
"nnoremap <C-p> :sp <CR> :term python % <CR>


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


" Press* to search term under the cursor
nnoremap <Leader>e :%s///g<Left><Left>
nnoremap <Leader>ec :%s///gc<Left><Left><Left>

" fugitive mapping
nmap <leader>gs :G<CR>
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>


" my own command
inoremap jj <ESC>


" lsp config {{
"lua require'nvim_lsp'.tsserver.setup()
"set completeopt=menuone,noinsert,noselect
"let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
"lua require'nvim_lsp'.tsserver.setup{on_attach=require'completion'.on_attach}
"let g:completion_enable_auto_popup = 1

"let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
"lua require'nvim_lsp'.tsserver.setup{ on_attach=require'completion'.on_attach }
" }}

" coc config {{
nmap <silent> gD <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
	if (index(['vim', 'help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction

let g:coc_global_extensions = [
            \'coc-snippets',
            \'coc-pairs',
            \'coc-json',
            \'coc-pyright',
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
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


" }}

" commenter with iterms
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
noremap <Leader>v :Commentary<cr>
let NERDTreeHighlightCursorline = 0
set lazyredraw

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
nnoremap <c-n> :call OpenTerminal()<CR>


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

