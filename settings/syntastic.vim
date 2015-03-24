let g:syntastic_enable_signs = 2
let g:syntastic_auto_jump = 1
let g:syntastic_auto_loc_list = 1
" Disable syntastic for python (managed by python-mode)
let g:syntastic_mode_map = {
    \ 'mode': 'active',
    \ 'active_filetypes': [],
    \ 'passive_filetypes': ['python'] }