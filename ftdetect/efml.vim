autocmd BufNewFile,BufReadPost,BufNew *.ef,*.eft,*.efm,*.efml setlocal filetype=efml
autocmd FileType efml setlocal commentstring=*\ %s
