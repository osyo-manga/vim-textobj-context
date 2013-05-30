if exists('g:loaded_textobj_context')
  finish
endif
let g:loaded_textobj_context = 1

let s:save_cpo = &cpo
set cpo&vim


call textobj#user#plugin('context', {
\      '-': {
\        'select-i': 'isb',
\      '*select-i-function*': 'textobj#context#select_i_forward',
\      },
\    })


let &cpo = s:save_cpo
unlet s:save_cpo
