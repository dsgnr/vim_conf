set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'airblade/vim-gitgutter'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'arzg/vim-colors-xcode'
Plugin 'dense-analysis/ale'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'pearofducks/ansible-vim'
Plugin 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
"Plugin 'prettier/vim-prettier'
Plugin 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plugin 'psf/black'
Plugin 'fisadev/vim-isort'
call vundle#end()


let mapleader = " "
nnoremap <leader>ff :Files<cr>
nnoremap <silent> <Leader>/ :BLines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>g :Commits<CR>
nnoremap <silent> <Leader>H :Helptags<CR>
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR>
nnoremap <silent> :black :Black<CR>
nnoremap <silent> :isort :Isort<CR>
" Make Ripgrep ONLY search file contents and not filenames
"command! -bang -nargs=* Rg
"  \ call fzf#vim#grep(
"  \   'rg --column --line-number --hidden --ignore-case --no-heading --color=always '.shellescape(<q-args>), 1,
"  \   <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
"  \           : fzf#vim#with_preview({'options': '--delimiter : --nth 4.. -e'}, 'right:50%:hidden', '?'),
"  \   <bang>0)
"nnoremap <silent> <Leader>fg :Rg<CR>

" Highlight extra/unwanted whitespace
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
highlight ExtraWhitespace ctermbg=red guibg=red guifg=red
match ExtraWhitespace /\s\+$\| \+\ze\t/

" Strip trailing whitespace for Python files
autocmd BufWritePre *.py %s/\s\+$//e
autocmd BufWritePre *.html %s/\s\+$//e
autocmd BufWritePre *.js %s/\s\+$//e
autocmd BufWritePre *.yml %s/\s\+$//e
autocmd BufWritePre *.j2 %s/\s\+$//e
"autocmd BufWritePre *.md %s/\s\+$//e


set cursorline
autocmd InsertEnter * highlight Normal ctermbg=7
autocmd InsertEnter * highlight CursorLine ctermbg=15
autocmd InsertLeave * highlight Normal ctermbg=15
autocmd InsertLeave * highlight CursorLine ctermbg=7

let g:python3_host_prog = '/Users/dani2934/.virtualenvs/py3/bin/python'
