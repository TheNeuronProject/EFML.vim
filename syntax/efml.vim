" Vim syntax file
" Language:     EFML
" Maintainer:   deluxghost
" Website:      https://github.com/deluxghost/EFML.vim/

if exists("b:current_syntax")
    finish
endif
unlet! b:current_syntax

" >Tag
syntax match efTagClassDefault /\v(\{\{[^=]+\=\s*)@<=.{-0,}(\}\})@=/ contained contains=efTagEscape
syntax match efTagClassData /\v\{\{.{-0,}\}\}/ contained contains=efTagClassDefault
syntax match efTagClass /\v(^\s*\>[^.#]+)@<=((\..*\{\{.*\}\}[^#]*)|(\.[^#]*)+)/ contained contains=efTagClassData,efTagEscape nextgroup=efTagClassRef
syntax match efTagClassRef /\v\#.*$/ contained
syntax match efTagRef /\v(^\s*\>[^.#]+)@<=\#.*$/
syntax match efTag /\v(^\s*)@<=\>.+$/ contains=efTagClass,efTagRef

" #Attribute
syntax match efAttrValue /\v(^\s*\#[^=]+\=\s*)@<=.+$/ contains=efTextData,efTextEscape
syntax match efAttr /\v(^\s*)@<=\#[^=]+(.*$)@=/

" %Property
syntax match efPropValue /\v(^\s*\%[^=]+\=\s*)@<=.+$/ contains=efTextData,efTextEscape
syntax match efProp /\v(^\s*)@<=\%[^=]+(.*$)@=/

" @Event
syntax match efEventValue /\v(^\s*\@[^=]+\=[^:]+\:\s*)@<=.+$/ contains=efTextData,efTextEscape
syntax match efEventFunc /\v(^\s*\@[^=]+\=\s*)@<=[^:]+$/
syntax match efEventFunc /\v(^\s*\@[^=]+\=\s*)@<=[^:]+(\:)@=/
syntax match efEvent /\v(^\s*)@<=\@[^=]+(.*$)@=/

" +Node -Node
syntax match efNode /\v(^\s*)@<=[-+].*$/

" .Text |Multiline Text
syntax match efTextDefault /\v(\{\{[^=]+\=\s*)@<=.{-0,}(\}\})@=/ contained contains=efTextEscape
syntax match efTextData /\v\{\{.{-0,}\}\}/ contained contains=efTextDefault
syntax match efText /\v(^\s*)@<=[.|].*$/ contains=efTextData,efTextEscape

" Comment
syntax match efComment /\v(^\s*)@<=[^\t >.|#%@+\-].*$/

" &Escape
syntax match efTextEscape /\v\&u[0-9a-fA-F]{4}|\&x[0-9a-fA-F]{2}|\&u\[[0-9a-fA-F]{-0,}\]|\&[bfnrtv0&]|\&\{([^{]|$)@=|\&\}([^}]|$)@=/ contained
syntax match efTextEscape /\v(^.*\{\{([^{]|\{[^{])*\{?\}\}([^{]|\{[^{])*\{?(\&\&)*)@<=\&\{(\{([^}]|\}[^}])*\{?$)@=/ contained
syntax match efTextEscape /\v(^([^{]|\{[^{])*\{?(\&\&)*)@<=\&\{(\{([^}]|\}[^}])*\{?$)@=/ contained
syntax match efTextEscape /\v(^.*\{\{([^}]|\}[^}])*\{?(\&\&)*)@<=\&\{(\{)@=/ contained
syntax match efTextEscape /\v(^.*\{\{([^{]|\{[^{])*\{?\}\}([^{]|\{[^{])*\{?(\&\&)*)@<=\&\}(\})@=/ contained
syntax match efTextEscape /\v(^([^{]|\{[^{])*\{?(\&\&)*)@<=\&\}(\})@=/ contained

syntax match efTagEscape /\v\&u[0-9a-fA-F]{4}|\&x[0-9a-fA-F]{2}|\&u\[[0-9a-fA-F]{-0,}\]|\&[bfnrtv0&]|\&\{([^{]|$)@=|\&\}([^}]|$)@=/ contained
syntax match efTagEscape /\v(^.*\{\{([^{]|\{[^{])*\{?\}\}([^{]|\{[^{])*\{?(\&\&)*)@<=\&\{(\{([^}]|\}[^}])*\{?$)@=/ contained
syntax match efTagEscape /\v(^([^{]|\{[^{])*\{?(\&\&)*)@<=\&\{(\{([^}]|\}[^}])*\{?$)@=/ contained
syntax match efTagEscape /\v(^.*\{\{([^}]|\}[^}])*\{?(\&\&)*)@<=\&\{(\{)@=/ contained
syntax match efTagEscape /\v(^.*\{\{([^{]|\{[^{])*\{?\}\}([^{]|\{[^{])*\{?(\&\&)*)@<=\&\}(\})@=/ contained
syntax match efTagEscape /\v(^([^{]|\{[^{])*\{?(\&\&)*)@<=\&\}(\})@=/ contained

" Define
highlight def link efTagClassDefault Type
highlight def link efTagClassData Special
highlight def link efTagClass Type
highlight def link efTagClassRef Statement
highlight def link efTagRef Statement
highlight def link efTag Identifier
highlight def link efAttrValue String
highlight def link efAttr Type
highlight def link efPropValue String
highlight def link efProp Special
highlight def link efEventValue String
highlight def link efEventFunc Special
highlight def link efEvent Statement
highlight def link efNode Constant
highlight def link efTextDefault String
highlight def link efTextData Identifier
highlight def link efText String
highlight def link efComment Comment
highlight def link efTextEscape Statement
highlight def link efTagEscape Constant

let b:current_syntax = "efml"
