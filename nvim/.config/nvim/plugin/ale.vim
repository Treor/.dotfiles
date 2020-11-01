let g:ale_enable = 1
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1 " Keeps the error column open

let g:ale_sign_error = '=>'
let g:ale_sign_warning = '>?'

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

"let g:ale_java_javac_classpath = [String], to load aditional classes
let g:ale_java_javac_classpath = "/home/daniel/java/algs4.jar"

let g:ale_linters = {
        \ 'javascript': ['eslint'],
        \ 'java': ['javac','javac-algs4'],
        \ 'php': ['php', 'phpcs', 'phpmd'],
        \ 'go': ['go build', 'gometalinter'],
        \ 'rust': ['rustc'],
        \ 'html': ['tidy', 'htmlhint'],
        \ 'c': ['clang'],
        \ 'cpp': ['clang++'],
        \ 'css': ['csslint', 'stylelint'],
        \ 'nim': ['nim', 'nimsuggest'],
        \ 'vim': ['vint'],
        \ 'python': ['python', 'pyflakes', 'flake8'],
        \ 'shell': ['sh', 'shellcheck'],
        \ 'zsh': ['zsh'],
        \ 'swift': ['swiftc'],
        \}

let g:ale_fixers = {
        \ 'javascript': ['eslint'],
        \ 'java': ['google_java_format']
        \}
