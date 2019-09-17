" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')


Plug 'morhetz/gruvbox'

call plug#end()

set tabstop=4
set shiftwidth=4
set t_Co=256
colorscheme gruvbox
let hr = (strftime('%H'))
if hr >= 19
set background=dark
elseif hr >= 9
set background=light
elseif hr >= 0
set background=dark
endif
set number
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'
