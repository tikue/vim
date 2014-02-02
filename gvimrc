if has("win32")
    set guifont=Consolas:h10
else
    if has("unix")
        let s:uname = system("uname")
        if s:uname == "Darwin\n"
            set guifont=Monaco:h11
        endif
    endif
endif
