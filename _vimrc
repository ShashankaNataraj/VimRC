"Init Pathogen
execute pathogen#infect()

"Show line numbers always
:set nu!

"Set the theme
syntax enable
set background=dark
colorscheme zenburn 

"Show nerdtree on open
autocmd vimenter * NERDTree MyAsup

"Toggle text wrapping off
:set wrap!

"set tabstops to 4
setlocal tabstop=4

"Use the defined font instead of the default one
if has('gui_running')
  set guifont=Consolas:h9:cANSI
endif
filetype plugin on
"Enable swapping of lines with Ctrl + Down, Ctrl + Up instead off ddp and ddkp
function! s:swap_lines(n1, n2)
    let line1 = getline(a:n1)
    let line2 = getline(a:n2)
    call setline(a:n1, line2)
    call setline(a:n2, line1)
endfunction

function! s:swap_up()
    let n = line('.')
    if n == 1
        return
    endif

    call s:swap_lines(n, n - 1)
    exec n - 1
endfunction

function! s:swap_down()
    let n = line('.')
    if n == line('$')
        return
    endif

    call s:swap_lines(n, n + 1)
    exec n + 1
endfunction

"============Custom keybindings=============
"Map leader to ,
:let mapleader=","

noremap <silent> <c-up> :call <SID>swap_up()<CR>
noremap <silent> <c-down> :call <SID>swap_down()<CR>
map <C-n> :NERDTreeToggle<CR>
<<<<<<< HEAD
"JS-Beautify plugin
  map <c-f> :call JsBeautify()<cr>
  " or
  autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
  " for html
  autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
  " for css or scss
  autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
"============Custom keybindings end=========
"":autocmd BufWritePost * !start c:\build.bat

:set ignorecase
:set smartcase


"CTRL P config
noremap <C-a> :CtrlP C:/Softwares/apache-tomcat-6.0.37/apache-tomcat-6.0.37/webapps/myautosupport/ui/<CR>
=======

"============Custom keybindings end=========
:autocmd BufWritePost * !start c:\build.bat
