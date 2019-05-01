" Vim syntax file
" Language: Test Case Framework (TCF) 
"
if exists("b:current_syntax")
    finish
endif

syn keyword basicKeywords TestCase Coding Execute
hi link basicKeywords Statement

syn keyword moreKeywords Call Run Step 
hi link moreKeywords Function

syn match operators "\v\=" "\v\==" 
hi link operators Operator

syn region strings start='"' end='"'
hi link strings String

"syn match numbers "\d\+"
"hi link numbers number 

syn match comments "//.*"
hi link comments Comment

syn region comments2 start="/\*" end="\*/"
hi link comments2 Comment

syn match variables "\$(\w+)"
hi link variables Identifier
