" Vim syntax file
" Language:     EFML
" Maintainer:   deluxghost
" Website:      https://github.com/deluxghost/EFML.vim/

if exists("b:current_syntax")
    finish
endif
unlet! b:current_syntax

syntax match efDataString /\m\(=\s*\)\@<=.\{-1,}\(}}\)\@=/ contained
syntax region efData start=/{{/ end=/}}/ keepend contained contains=efDataString
syntax match efAttrDataString /\m\(^\s*[#%][^=]\+=\s*{{[^=]\+=\s*\)\@<=.\{-1,}\(}}\)\@=/ contained
syntax match efAttrData /\m\(^\s*[#%][^=]\+=\s*\)\@<={{\([^}]\|}[^}]\)\+}}\s*$/ contained contains=efAttrDataString
syntax match efAttrString /\m\(^\s*[#%][^=]\+=\s*\)\@<=.\+$/ contains=efAttrData
syntax match efTagAlias /\m\(^\s*>[^#]\+\)\@<=#.\+$/
syntax match efTagClassString /\m\(\.{{[^#=]\+=\s*\)\@<=[^#]\{-1,}\(}}\)\@=/ contained
syntax match efTagClass /\m\(^\s*>[^#]\+\)\@<=\(\.[^#]\+\)\+/ contains=efTagClassString
syntax match efTag /\m\(^\s*\)\@<=>[^.#]\+\(.*$\)\@=/
syntax match efPoint /\m\(^\s*\)\@<=[-+].*$/
syntax match efAttribute /\m\(^\s*\)\@<=#[^=]\+\(.*$\)\@=/
syntax match efProperty /\m\(^\s*\)\@<=%[^=]\+\(.*$\)\@=/
syntax match efEventFunc /\m\(^\s*@[^=]\+=\s*\)\@<=[^:]\+$/
syntax match efEventFuncPlus /\m\(^\s*@[^=]\+=\s*\)\@<=[^:]\+\(:\)\@=/
syntax match efEventDataString /\m\(^\s*@[^=]\+=\s*[^:]\+:\s*{{[^=]\+=\s*\)\@<=.\{-1,}\(}}\)\@=/ contained
syntax match efEventData /\m\(^\s*@[^=]\+=\s*[^:]\+:\s*\)\@<={{\([^}]\|}[^}]\)\+}}\s*$/ contained contains=efEventDataString
syntax match efEventString /\m\(^\s*@[^=]\+=\s*[^:]\+:\s*\)\@<=.\+$/ contains=efEventData
syntax match efEvent /\m\(^\s*\)\@<=@[^=]\+\(.*$\)\@=/
syntax match efString /\m\(^\s*\)\@<=[\.].*$/ contains=efData
syntax match efComment /\m\(^\s*\)\@<=[^\t \.\-+>#%@].*$/

highlight def link efDataString String
highlight def link efData PreProc
highlight def link efAttrDataString String
highlight def link efAttrData Identifier
highlight def link efAttrString String
highlight def link efTagAlias Statement
highlight def link efTagClassString String
highlight def link efTagClass Type
highlight def link efTag Identifier
highlight def link efPoint Identifier
highlight def link efAttribute Type
highlight def link efProperty PreProc
highlight def link efEventFunc Type
highlight def link efEventFuncPlus Type
highlight def link efEventDataString String
highlight def link efEventData PreProc
highlight def link efEventString String
highlight def link efEvent Statement
highlight def link efString String
highlight def link efComment Comment

let b:current_syntax = "batsh"