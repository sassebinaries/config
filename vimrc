:map ^P !}fmt^M
:map ^C !}sed 's/^/\#/'^M
:map ^B !}sed 's/^\#//'^M

set tabstop=4
set shiftwidth=4
set expandtab
set wrap

syntax on
set hlsearch

autocmd Filetype gitcommit setlocal spell textwidth=72
