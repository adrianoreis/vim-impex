" Vim syntax file
" Language:	Hybris impex
" Maintainer:	Adriano Reis <adriano@teste.com>
"

if exists("b:current_systax")
   finish
endif


syn match impexComment '#[^%].*$'
syn match beanShellCall '#%.*$'
syn match itemType '\w\+;' contained
syn match modifierValue '=.*]' contained
"syn region impexVariable start='\$' end='\W' fold transparent contains=theVariable
"syn match theVariable '\w*'
syn match theVariable '\$\w*'
syn match valueLine '^;.*$'
syn keyword impexMode INSERT UPDATE INSERT_UPDATE REMOVE nextgroup=itemType skipwhite
syn keyword impexModifiers batchmode cacheUpdate processor impex.legacy.mode alias allownull nextgroup=modifierValue skipwhite
syn keyword impexModifiers cellDecorator collection-delimiter dateformat default ignoreKeyCase
syn keyword impexModifiers ignorenull key2value-delimiter lang map-delimiter mode numberformat
syn keyword impexModifiers path-delimiter pos translator unique virtual

let b:current_systax = "impex"

hi def link impexMode       Statement
hi def link itemType        Type
hi def link impexComment    Comment
hi def link impexModifiers  Keyword
hi def link modifierValue   Statement 
hi def link theVariable     Identifier 
hi def link valueLine       Constant 
hi def link beanShellCall   PreProc 

"Comment Constant Identifier Statement PreProc Type Special Underlined Ignore
"Error Todo
"
"Impex components:
"Headers
"Lines of values
"Comments
"Macrodefinitions
"BeanShell calls
"Line declaring user rights
"
