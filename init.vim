" Basic Stuff
syntax on
set number relativenumber
set mouse=v

" disable vi compatibility (emulation of old bugs)
set nocompatible
set nocscopeverbose " suppress 'duplicate connection' error

set shiftwidth=4 " indent is 4 spaces
set tabstop=4    " tab width is 4 spaces
set expandtab

set formatoptions-=cro

call plug#begin()
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
" Plug 'https://github.com/vim-airline/vim-airline' " Status bar
" Plug 'https://github.com/vim-airline/vim-airline-themes' " Status bar themes
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/frazrepo/vim-rainbow'
Plug 'https://github.com/nathanaelkane/vim-indent-guides'
Plug 'https://github.com/vim-test/vim-test'
Plug 'https://github.com/fatih/vim-go'
Plug 'https://github.com/gko/vim-coloresque'
Plug 'https://github.com/hashivim/vim-terraform'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
Plug 'voldikss/vim-floaterm'
Plug 'lervag/vimtex'
Plug 'preservim/nerdtree'

" Tabs
" Plug 'kyazdani42/nvim-web-devicons'
" Plug 'romgrk/barbar.nvim'

" If you don't have nodejs and yarn
" use pre build, add 'vim-plug' to the filetype list so vim-plug can update this plugin
" see: https://github.com/iamcco/markdown-preview.nvim/issues/50
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

set encoding=UTF-8

call plug#end()

" set termguicolors     " enable true colors support
set termguicolors
" let ayucolor="dark"   " for dark version of theme
let g:doom_one_terminal_colors = v:true
colorscheme doom-one

set ignorecase
set smartcase

set cursorline

" Make Ranger replace Netrw and be the file explorer
let g:rnvimr_enable_ex = 1
tnoremap <Esc> <C-\><C-n><CR>

nnoremap <F9> :FloatermToggle<CR>
nnoremap <F8> :terminal<CR>:set nonumber<CR>i<CR>

" these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
nmap <leader> <C-n> :TestNearest<CR>
nmap <leader> <C-f> :TestFile<CR>
nmap <leader> <C-s> :TestSuite<CR>
nmap <leader> <C-l> :TestLast<CR>
nmap <leader> <C-g> :TestVisit<CR>

let test#strategy = "basic"

" tabs
nnoremap <C-t> :tabnew<CR>
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>w :tabclose<CR>

" nnoremap <C-w> :tabclose<CR>
" nnoremap <C-w> :q<CR>
nnoremap <A-Left> :tabprevious<CR>
nnoremap <A-Right> :tabnext<CR>
nnoremap <A-Up> :tabm -1<CR>
nnoremap <A-Down> :tabm +1<CR>

nnoremap <A-h> :tabprevious<CR>
nnoremap <A-l> :tabnext<CR>
nnoremap <A-j> :tabm -1<CR>
nnoremap <A-k> :tabm +1<CR>

nnoremap <C-Left> <C-w>h<CR>
nnoremap <C-Right> <C-w>l<CR>
nnoremap <C-Up> <C-w>k<CR>
nnoremap <C-Down> <C-w>j<CR>
nnoremap <C-\> <C-w>v<C-w>l<CR>
nnoremap <C-_> <C-w>s<C-w>j<CR>

nnoremap <C-h> <C-w>h<CR>
nnoremap <C-l> <C-w>l<CR>
nnoremap <C-k> <C-w>k<CR>
nnoremap <C-j> <C-w>j<CR>

nnoremap <C-p> :RnvimrToggle<CR>

" Other keymaps
nnoremap <leader>h :noh<CR>
nnoremap <leader>y "*y
nnoremap <leader>p "*p

nnoremap <leader>b :NERDTreeToggle<CR>

" Tabs
" hi TabLine      guifg=#E7C547 guibg=#14191F gui=none 
" hi TabLineSel   guifg=#14191F guibg=#E7C547 gui=bold 
" hi TabLineFill  guifg=#E7C547 guibg=#14191F gui=none 

" For transparency
set t_8f=\[[38;2;%lu;%lu;%lum
set t_8b=\[[48;2;%lu;%lu;%lum

hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE

hi! StatusLine  ctermbg=NONE guibg=NONE
hi! StatusLineNC ctermbg=NONE guibg=NONE
hi! TabLine ctermbg=NONE guibg=NONE
"
" hi! TabLineSel ctermbg=NONE guibg=NONE
" hi! TabLineFill ctermbg=NONE guibg=NONE

set completeopt-=preview " For No Previews
let g:rainbow_active = 1

