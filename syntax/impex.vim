" Vim syntax file
" Language:	Hybris impex
" Maintainer:	Adriano Reis <adriano@teste.com>
" Last Change:	2015-12-23

if exists("b:current_systax")
   finish
endif

syn match itemType '\w\+;' contained
syn keyword impexMode INSERT UPDATE INSERT_UPDATE REMOVE nextgroup=itemType skipwhite

let b:current_systax = "impex"

hi def link impexMode  Constant
hi def link itemType   Type
