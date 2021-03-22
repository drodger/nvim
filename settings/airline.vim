" Airline
if has('macunix')
    let g:airline_left_sep='▶'
    let g:airline_right_sep='◀'
    let g:airline_section_b='%{strftime("%b %d\ %I:%M")}'
endif

" let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
let g:airline_powerline_fonts=1
let g:airline_section_error=''
let g:airline_section_warning=''
let g:airline#extensions#branch#format='CustomBranchName'
let g:airline_theme = 'molokai'
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_startify = 1

function! CustomBranchName(name)
    let size = strlen(a:name)
    if (size > 22)
        return a:name[0:4] . '..' . a:name[-15:-1]
    else
        return a:name
    endif
endfunction
