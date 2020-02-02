set ts=4
set sw=4
set expandtab autoindent
syntax on

"decode
set encoding=utf-8  
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileformats=unix,dos,mac  
set termencoding=utf-8
set formatoptions+=m
set formatoptions+=B

"display
set ruler
set number
set nowrap
set showcmd
set showmode
set showmatch
set matchtime=2

"search
set hlsearch
set incsearch
set ignorecase
set smartcase


"tab settings
set expandtab
set smarttab
set shiftround


"auto tab
set autoindent smartindent shiftround
set shiftwidth=4
set tabstop=4
set softtabstop=4


"position
set cursorcolumn
set cursorline


"auto lang conf
filetype on
filetype plugin on
filetype indent on

autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai
autocmd FileType ruby set tabstop=2 shiftwidth=2 softtabstop=2 expandtab ai
autocmd BufRead,BufNew *.md,*.mkd,*.markdown set filetype=markdown.mkd

autocmd BufNewFile *.sh,*.py exec \":call AutoSetFileHead()\"
function! AutoSetFileHead()
    " .sh "" .sh "
    if &filetype == 'sh'
        call setline(1, "\#!/bin/bash")
    endif

    " python "
    if &filetype == 'python'
        call setline(1, "\#!/usr/bin/env python")
        call append(1, "\# encoding: utf-8")
    endif

    normal G
    normal o
    normal o
endfunc

autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun


set nu
set showmatch

set nobackup
set nowb
set noswapfile

colorscheme default
