function! SetEFMLType()
    setlocal filetype=efml
    " Commenters
    "  NERDCommenter
    if !exists("g:NERDCustomDelimiters")
        let g:NERDCustomDelimiters = {}
    endif
    let g:NERDCustomDelimiters.efml = {"left": "* ", "leftAlt": "*"}
    "  Commentary.vim
    setlocal commentstring=*\ %s
    "  TComment
    silent! call tcomment#type#Define("efml", "* %s")
endfunction

autocmd BufNewFile,BufReadPost,BufNew *.ef,*.eft,*.efm,*.efml call SetEFMLType()
