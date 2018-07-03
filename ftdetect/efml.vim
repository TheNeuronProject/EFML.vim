function! SetEFMLType()
    setlocal commentstring=*\ %s
    setlocal filetype=efml
endfunction

autocmd BufNewFile,BufReadPost,BufNew *.ef,*.eft,*.efm,*.efml call SetEFMLType()
