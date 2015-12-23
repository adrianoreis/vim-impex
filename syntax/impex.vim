" Vim syntax file
" Language:	Hybris impex
" Maintainer:	Adriano Reis <adriano@teste.com>
" Last Change:	2015-12-23

if exists("b:current_systax")
   finish
endif


syn match impexComment '#.*$'
syn match itemType '\w\+;' contained
syn match modifierValue '=.*]' contained
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

