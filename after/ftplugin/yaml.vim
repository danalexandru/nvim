set shiftwidth=2 " indent is 2 spaces
set tabstop=2    " tab width is 2 spaces
set sts=2

" Don't use tabs
set expandtab
let g:indentLine_char = '⦙'

" Fix auto-indentation for YAML files
augroup yaml_fix
    autocmd!
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:>
augroup END

set indentkeys-=<:>
let g:bullets_set_mappings = 0
