" Vim color file
"
" Author: Tomas Restrepo <tomas@winterdom.com>
" Modified by: Steve Losh <steve@stevelosh.com>
"
" Note: Based on the monokai theme for textmate
" by Wimer Hazenberg and its darker variant
" by Hamish Stuart Macpherson
"
" Inspired by JarrodCTaylor/spartan
" for the more muted look

set background=dark
highlight clear

"if exists("syntax_on")
    "syntax reset
"endif

let g:colors_name="monokai"

let lightpurple       = { "gui": "#af5fff", "cterm": "135"}
let lightblue         = { "gui": "#87d7ff", "cterm": "117"}
let blue              = { "gui": "#1446a0", "cterm": "12"}
let seagreen          = { "gui": "#00875f", "cterm": "29"}
let darkyellow        = { "gui": "#00afd7", "cterm": "38"}
let lightgreen        = { "gui": "#5f8787", "cterm": "66"}
let tan               = { "gui": "#87875f", "cterm": "101"}
let defaultbackground = { "gui": "#262626", "cterm": "235"}
let darkergrey        = { "gui": "#262626", "cterm": "235"}
let defaultforeground = { "gui": "#a8a8a8", "cterm": "248"}
let brightwhite       = { 'gui': '#FFFFFF', 'cterm': '231' }
let white             = { 'gui': '#E8E8E3', 'cterm': '252' }
let black             = { 'gui': '#272822', 'cterm': '234' }
let lightblack        = { 'gui': '#2D2E27', 'cterm': '235' }
let lightblack2       = { 'gui': '#383a3e', 'cterm': '236' }
let darkblack         = { 'gui': '#211F1C', 'cterm': '233' }
let grey              = { 'gui': '#8F908A', 'cterm': '243' }
let darkgrey          = { 'gui': '#64645e', 'cterm': '239' }
let warmgrey          = { 'gui': '#75715E', 'cterm': '59'  }
let pink              = { 'gui': '#f92772', 'cterm': '197' }
let green             = { 'gui': '#a6e22d', 'cterm': '148' }
let aqua              = { 'gui': '#66d9ef', 'cterm': '81'  }
let yellow            = { 'gui': '#e6db74', 'cterm': '186' }
let orange            = { 'gui': '#fd9720', 'cterm': '208' }
let purple            = { 'gui': '#ae81ff', 'cterm': '141' }
let red               = { 'gui': '#e73c50', 'cterm': '196' }
let darkred           = { 'gui': '#5f0000', 'cterm': '52'  }
let addfg             = { 'gui': '#d7ffaf', 'cterm': '193' }
let addbg             = { 'gui': '#5f875f', 'cterm': '65'  }
let delbg             = { 'gui': '#f75f5f', 'cterm': '167' }
let changefg          = { 'gui': '#d7d7ff', 'cterm': '189' }
let changebg          = { 'gui': '#5f5f87', 'cterm': '60'  }

function! s:HL(item, fgColor, bgColor, style)
    execute 'hi ' . a:item . ' ctermfg=' . get(a:fgColor, 'cterm', 'none') . ' ctermbg=' . get(a:bgColor, 'cterm', 'none') . ' cterm=' . a:style . ' guibg=' . get(a:bgColor, 'gui', 'NONE') . ' guifg=' . get(a:fgColor, 'gui', 'NONE' . ' gui=' . a:style)
endfunction

call s:HL('Normal', brightwhite, defaultbackground, 'NONE')
call s:HL('CursorLine', {}, darkgrey, 'NONE')
call s:HL('ColorColumn', {}, darkgrey, 'NONE')
call s:HL('CursorLineNr', orange, defaultbackground, 'NONE')
call s:HL('Search', darkgrey, white, 'NONE')
call s:HL('IncSearch', darkgrey, white, 'NONE')
call s:HL('NonText', blue, {}, 'NONE')
call s:HL('EndOfBuffer', blue, {}, 'NONE')

call s:HL('Boolean', lightpurple, {}, 'NONE')
call s:HL('Comment', grey, {}, 'bold')
call s:HL('Character', tan, {}, 'NONE')
call s:HL('Number', lightpurple, {}, 'NONE')
call s:HL('String', tan, {}, 'NONE')
call s:HL('Conditional', pink, {}, 'bold')
call s:HL('Constant', lightpurple, {}, 'bold')
call s:HL('Define', lightblue, {}, 'NONE')
call s:HL('Float', lightpurple, {}, 'NONE')
call s:HL('Function', green, {}, 'NONE')
call s:HL('Identifier', orange, {}, 'NONE')
call s:HL('Builtin', lightpurple, {}, 'bold')

call s:HL('DiffAdd', green, {}, 'NONE')
call s:HL('DiffChange', darkyellow, {}, 'NONE')
call s:HL('DiffDelete', red, {}, 'NONE')
call s:HL('DiffText', grey, {}, 'bold')

call s:HL('Cursor', defaultbackground, pink, 'NONE')
call s:HL('iCursor', defaultbackground, tan, 'NONE')
call s:HL('vCursor', defaultbackground, green, 'NONE')

call s:HL('EasyMotionTarget', yellow, defaultbackground, 'bold')
call s:HL('EasyMotionShade', grey, defaultbackground, 'bold')
call s:HL('Directory', lightgreen, {}, 'bold')
call s:HL('Error', {}, red, 'NONE')
call s:HL('ErrorMsg', pink, defaultbackground, 'bold')
call s:HL('Exception', seagreen, {}, 'bold')

call s:HL('Keyword', pink, {}, 'bold')
call s:HL('Label', tan, {}, 'NONE')
call s:HL('Macro', tan, {}, 'NONE')
call s:HL('SpecialKey', lightblue, {}, 'NONE')

call s:HL('InterestingWord1', defaultbackground, orange, 'NONE')
call s:HL('InterestingWord2', defaultbackground, seagreen, 'NONE')
call s:HL('InterestingWord3', defaultbackground, pink, 'NONE')

call s:HL('MatchParen', yellow, {}, 'bold')
call s:HL('ModeMsg', tan, {}, 'NONE')
call s:HL('MoreMsg', tan, {}, 'NONE')
call s:HL('Operator', pink, {}, 'NONE')
call s:HL('MatchParen', pink, {}, 'NONE')

call s:HL('PmenuSel', defaultbackground, lightgreen, 'NONE')
call s:HL('PmenuSbar', {}, defaultbackground, 'NONE')

call s:HL('PreCondit', lightgreen, {}, 'bold')
call s:HL('PreProc', lightgreen, {}, 'NONE')
call s:HL('Question', lightblue, {}, 'NONE')
call s:HL('Repeat', pink, {}, 'bold')

call s:HL('IndentGuides', {}, darkgrey, 'NONE')
call s:HL('SignColumn', lightgreen, defaultbackground, 'NONE')
call s:HL('SpecialChar', pink, {}, 'bold')
call s:HL('SpecialComment', grey, {}, 'bold')
call s:HL('Special', lightblue, {}, 'NONE')
call s:HL('Statement', pink, {}, 'bold')
call s:HL('StatusLine', defaultforeground, defaultbackground, 'NONE')
call s:HL('StorageClass', orange, {}, 'bold')
call s:HL('Structure', lightblue, {}, 'NONE')
call s:HL('Tag', pink, {}, 'bold')
call s:HL('Title', pink, {}, 'NONE')
call s:HL('Todo', white, defaultbackground, 'bold')

call s:HL('Typedef', lightblue, {}, 'NONE')
call s:HL('Type', lightblue, {}, 'NONE')

call s:HL('WarningMsg', white, defaultbackground, 'bold')
call s:HL('WildMenu', lightblue, {}, 'NONE')

call s:HL('MyTagListFileName', pink, {}, 'bold')

if has("spell")
    call s:HL('SpellBad', white, red, 'NONE')
    call s:HL('SpellCap', white, purple, 'NONE')
    call s:HL('SpellLocal', white,  lightgreen, 'NONE')
    call s:HL('SpellRare', white, {}, 'NONE')
endif

call s:HL('VisualNOS', {}, grey, 'NONE')
call s:HL('Visual', {}, grey, 'NONE')
call s:HL('SpecialKey', {}, grey, 'NONE')

" HiLink pythonSelf Include
" HiLink pythonFunctionVars Identifier
" HiLink pythonFunctionParameters Identifier
call s:HL('pythonClass', aqua, {}, 'NONE')
call s:HL('pythonStatement', pink, {}, 'NONE')
call s:HL('pythonSelf', aqua, {}, 'NONE')
call s:HL('pythonInclude', pink, {}, 'NONE')
call s:HL('pythonString', yellow, {}, 'NONE')
call s:HL('pythonExtraOperator', pink, {}, 'NONE')
call s:HL('pythonConditional', pink, {}, 'NONE')
call s:HL('pythonRepeat', pink, {}, 'NONE')
call s:HL('pythonOperator', pink, {}, 'NONE')
call s:HL('pythonExtraPseudoOperator', pink, {}, 'NONE')
call s:HL('pythonBoolean', purple, {}, 'NONE')
call s:HL('pythonNone', purple, {}, 'NONE')
call s:HL('pythonNumber', purple, {}, 'NONE')
call s:HL('pythonFunction', green, {}, 'NONE')
call s:HL('pythonFunctionCall', green, {}, 'NONE')
call s:HL('pythonParameters', orange, {}, 'NONE')
"call s:HL('pythonParam', orange, {}, 'NONE')
"call s:HL('pythonFunctionVars', orange, {}, 'NONE')
call s:HL('pythonFunctionParameters', orange, {}, 'NONE')
call s:HL('pythonBrackets', aqua, {}, 'NONE')
call s:HL('pythonDecorator', green, {}, 'NONE')
call s:HL('pythonBuiltin', aqua, {}, 'NONE')
call s:HL('pythonPreCondit', pink, {}, 'bold')
call s:HL('pythonDoctest', grey, {}, 'bold')
call s:HL('pythonException', pink, {}, 'bold')
" call s:HL('pythonAttribute', green, {}, 'bold')

" Javascript
call s:HL('javascriptFuncArg', orange, {}, 'NONE')
call s:HL('javascriptVariable', lightblue, {}, 'NONE')
call s:HL('javascriptFuncKeyword', lightblue, {}, 'NONE')
call s:HL('javascriptBlock', defaultforeground, {}, 'NONE')
call s:HL('javascriptOperator', pink, {}, 'NONE')
call s:HL('javascriptImport', pink, {}, 'NONE')
call s:HL('javascriptFuncComma', defaultforeground, {}, 'NONE')

