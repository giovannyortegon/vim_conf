set encoding=utf-8
 syntax enable
" No backup
 set nobackup
 set nowritebackup
 set noundofile
" Iteration lines 
set listchars=tab:.\ , eol:<
set list
" File Explorer
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_winsize=15
" Open terminal commad
map <silent> <C-n> :Vexplore<CR>
" Open terminal command
map <silent> <C-t> :rightbelow term powershell<CR>
" Open vertival window
map <silent> <C-l> :rightbelow vsplit<CR>
" Cursor
 set cursorline
 set number
 set paste
" Mouse
 set mouse=a
 set clipboard+=named
" " Search
 set incsearch
 set hlsearch
" " Mode
 set showmode
" " Highlight commads
 set showcmd
 set wildmenu
" " Save
 set autowriteall
 set commentstring=\ #\ %s
 set shell=bash\ -login
" " Theme
" "colorscheme nighted
 set termguicolors
 set background=dark
 let g:edge_style = 'neon'
 let g:edge_disable_italic_comment = 1
 colorscheme edge
" To enable file
 filetype on
 augroup python_settings
         autocmd FileType python source $VIMRUNTIME\syntax\python.vim
 augroup END
 augroup c_settings
         autocmd FileType c source $VIMRUNTIME\syntax\c1.vim
 augroup END
 augroup asm_settings
         autocmd FileType asm source $VIMRUNTIME\syntax\asmN.vim
 augroup END
 augroup arm_settings
         autocmd FileType sh source $VIMRUNTIME\syntax\bash.vim
 augroup END
 augroup full_stack_settings
        autocmd FileType html source $VIMRUNTIME\syntax\full.vim
        autocmd FileType css source $VIMRUNTIME\syntax\full.vim
        autocmd FileType javascript source $VIMRUNTIME\syntax\full.vim
 augroup END
