" Vim with all enhancements
source $VIMRUNTIME/vimrc_example.vim

" Use the internal diff if available.
" Otherwise use the special 'diffexpr' for Windows.
if &diffopt !~# 'internal'
  set diffexpr=MyDiff()
endif
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg1 = substitute(arg1, '!', '\!', 'g')
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg2 = substitute(arg2, '!', '\!', 'g')
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let arg3 = substitute(arg3, '!', '\!', 'g')
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  let cmd = substitute(cmd, '!', '\!', 'g')
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

 set encoding=utf-8
 syntax enable
" No backup
 set nobackup
 set nowritebackup
 set noundofile
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
	 autocmd FileType c source $VIMRUNTIME\syntax\c.vim
 augroup END
 augroup arm_settings
	 autocmd FileType asm source $VIMRUNTIME\syntax\arm.vim
 augroup END
 augroup arm_settings
         autocmd FileType sh source $VIMRUNTIME\syntax\bash.vim
 augroup END
 augroup full_stack_settings
 	autocmd FileType html source $VIMRUNTIME\syntax\full.vim
 	autocmd FileType css source $VIMRUNTIME\syntax\full.vim
 	autocmd FileType javascript source $VIMRUNTIME\syntax\full.vim
 augroup END
