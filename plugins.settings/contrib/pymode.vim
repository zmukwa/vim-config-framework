function! StartPymode()
    let g:pymode_virtualenv = 1 " Auto fix vim python paths if virtualenv enabled        
    let g:pymode_folding= 0  " Enable python folding 
    let g:pymode_rope = 0

    let g:pymode_lint = 0
    if g:pymode_lint != 0
        if exists('flake8')
          let g:pymode_lint_checkers = []
          autocmd BufWritePost *.py call Flake8()
        else
          let g:pymode_lint_checkers = ['pep8', 'pep257', 'pyflakes', 'mccabe']
        endif
        let g:pymode_lint_ignore = 'C0111,D100,D101,D102,D103'
        let g:pymode_lint_sort = ['E', 'C', 'W', 'R', 'I', 'F', 'D']
        let g:pymode_lint_unmodified = 1
    endif
endfunction

call PlugOnLoad('python-mode', 'call StartPymode()')
