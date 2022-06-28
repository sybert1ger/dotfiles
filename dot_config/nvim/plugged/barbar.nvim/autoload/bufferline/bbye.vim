" Bbye
"
" source: https://github.com/moll/vim-bbye/blob/master/plugin/bbye.vim
" license:
"
" Copyright (C) 2013 Andri Möll
"
" This program is free software: you can redistribute it and/or modify it under
" the terms of the GNU Affero General Public License as published by the Free
" Software Foundation, either version 3 of the License, or any later version.
"
" Additional permission under the GNU Affero GPL version 3 section 7:
" If you modify this Program, or any covered work, by linking or
" combining it with other code, such other code is not for that reason
" alone subject to any of the requirements of the GNU Affero GPL version 3.
"
" In summary:
" - You can use this program for no cost.
" - You can use this program for both personal and commercial reasons.
" - You do not have to share your own program's code which uses this program.
" - You have to share modifications (e.g bug-fixes) you've made to this program.
"
" For the full copy of the GNU Affero General Public License see:
" http://www.gnu.org/licenses.

function! bufferline#bbye#delete(action, bang, buffer, ...)
  call luaeval("require'bufferline.bbye'.delete(_A[1], _A[2], _A[3], _A[4])", [a:action, a:bang, a:buffer, get(a:, 1, v:null)])
endfunction