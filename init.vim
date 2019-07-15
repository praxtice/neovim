set nocompatible
filetype off
syntax on
set noshowmode
set number
set nowrap
set encoding=utf8
set ruler

" Plug based plugins
call plug#begin()

" Utility
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'ervandew/supertab'
Plug 'schickling/vim-bufonly'
Plug 'wesQ3/vim-windowswap'
Plug 'junegunn/fzf'
Plug 'godlygeek/tabular'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'benmills/vimux'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'gilsondev/searchtasks.vim'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'wesQ3/vim-windowswap'
Plug 'tpope/vim-sensible'
Plug 'terryma/vim-multiple-cursors'
Plug 'neomake/neomake'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/goyo.vim'


" org mode
Plug 'jceb/vim-orgmode'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

" Theme / Interface
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sjl/badwolf'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plug 'junegunn/limelight.vim'
Plug 'mkarmona/colorsbox'
Plug 'romainl/Apprentice'
Plug 'Lokaltog/vim-distinguished'
Plug 'chriskempson/base16-vim'
Plug 'w0ng/vim-hybrid'
Plug 'AlessandroYorba/Sierra'
Plug 'daylerees/colour-schemes'
Plug 'dracula/vim'
Plug 'effkay/argonaut.vim'
Plug 'ajh17/Spacegray.vim'
Plug 'atelierbram/Base2Tone-vim'
Plug 'colepeters/spacemacs-theme.vim'

" Language Client   
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'
" Latex
"Plug 'coot/atp_vim'

" Golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Lisp
Plug 'l04m33/vlime', {'rtp': '~/.config/nvim/plugged/'}
Plug 'kovisoft/slimv'

" Haskell
Plug 'ndmitchell/ghcid', { 'rtp': 'plugins/nvim' }
" Plug 'parsonsmatt/intero-neovim'

" ReasonML
Plug 'reasonml-editor/vim-reason-plus'

call plug#end()

" Paren matching in vim
set sm
set lisp
set mouse=nicr
set backspace=indent,eol,start

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" wrap text comfily
set wrap
set linebreak
" set the leader key to \
nnoremap <Leader> \
" Always display the status line
set laststatus=2

" Enable Elite mode, No ARRRROWWS!!!!
let g:elite_mode=1

" Enable highlighting of the current line
set cursorline

" Theme and Styling
set t_Co=256
set background=dark

if (has("termguicolors"))
    set termguicolors
endif

let base16colorspace=256  " Access colors present in 256 colorspace
let colors = "Base2Tone_LakeDark Base2Tone_DrawbridgeDark Base2Tone_PoolDark Base2Tone_MeadowDark Base2Tone_SpaceDark"
" colorscheme Base2Tone_LakeDark
colorscheme Base2Tone_DrawbridgeDark
" colorscheme Base2Tone_PoolDark
" colorscheme Base2Tone_MeadowDark
" colorscheme Base2Tone_SpaceDark

let g:spacegray_underline_search = 1
let g:spacegray_italicize_comments = 1

" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='hybrid'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1

" Fzf Configuration
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

" Language Client Configuration
let g:LanguageClient_serverCommands = {
    \ 'reason': ['/absolute/path/to/reason-language-server.exe'],
    \ }

" Enable folding with spacebar
nnoremap <space> za

" Enable split navimgation with Ctr-Direction
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-n> :NERDTreeToggle<CR>

" Easymotion config    

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

if &compatible
  finish
else
  let g:loaded_sensible = 1
endif

" Disable arrow movement, resize splits instead.
if get(g:, 'elite_mode')
    nnoremap <Up> :resize +2<CR>
    nnoremap <Down> :resize -2<CR>
    nnoremap <Left> :vertical resize +2<CR>
    nnoremap <Right> :vertical resize -2<CR>
endif

let g:deoplete#enable_at_startup = 1

" Neomake
call neomake#configure#automake('rw', 1000)

" Ocaml
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

