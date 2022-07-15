" Ale
let g:ale_lint_on_enter = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"let b:ale_linters = ['pylint']
let g:ale_use_global_executables = 1
let g:ale_linters = {'python': ['pycodestyle', 'pylint'],'javascript': ['jshint', 'prettier']}
let g:ale_python_pycodestyle_options= '--max-line-length=100 --disable=C0103'
"let g:ale_python_pylint_options='--disable=too-few-public-methods,invalid-name,broad-except'
"let b:ale_python_pylint_use_global = 1
let g:ale_python_pylint_change_directory = 0
"let g:ale_python_pylint_executable='/bin/bash'
let g:ale_python_pylint_use_global = 1
let g:ale_python_pylint_executable = '/Users/dani2934/dev/mono/piping/pylint.sh'
let b:ale_javascript_jshint_executable = '/Users/dani2934/dev/mono/piping/jshint.sh'
let b:ale_javascript_jshint_use_global = 1
"let g:ale_python_pylint_options='$(~/.per_project_pylint.py)'
"let g:ale_python_pylint_options='/Users/dani2934/dev/mono/piping/pylint.sh'
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_column_always = 1
let g:ale_open_list = 1
let g:ale_list_window_size = 5
let g:ale_set_highlights = 1
let g:ale_set_signs = 1
let g:ale_set_highlights = 1
let g:ale_fixers = {"python": ['black', 'isort'], "javascript": ['prettier']}
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_options = '--print-width 100 --tab-width 4 maxerr 999'
highlight link ALEErrorLine error
highlight link ALEErrorSign error
highlight link ALEError error
highlight link ALEWarningSign error
highlight link ALEWarning error
highlight link ALEWarningLine error
highlight link ALEInfo error
highlight link ALEInfoLine error
highlight link ALEInfoSign error
