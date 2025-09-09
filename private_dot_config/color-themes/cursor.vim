" Colorscheme: Cursor (converted from TextMate tmTheme)
" Author: you + fixes
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "cursor"

" ---- Palette from tmTheme ----
let s:bg            = '#24292E'
let s:fg            = '#E1E4E8'
let s:caret         = '#C8E1FF'
let s:selection     = '#3392FF'
let s:linehl        = '#2B3036'
let s:invisibles    = '#444D56'

let s:comment       = '#6A737D'
let s:const         = '#79B8FF'
let s:entity        = '#B392F0'
let s:keyword       = '#F97583'
let s:string        = '#9ECBFF'   " also used for docstrings in your theme
let s:variable      = '#FFAB70'
let s:tagname       = '#85E89D'
let s:bracket       = '#D1D5DA'
let s:warnfg        = '#CD9731'
let s:errorfg       = '#F44747'
let s:infofg        = '#6796E6'
let s:debugfg       = '#B267E6'
let s:diff_del_fg   = '#FDAEB7'
let s:diff_del_bg   = '#86181D'
let s:diff_ins_fg   = '#85E89D'
let s:diff_ins_bg   = '#144620'
let s:diff_chg_fg   = '#FFAB70'
let s:diff_chg_bg   = '#C24E00'
let s:diff_ign_fg   = '#2F363D'
let s:diff_ign_bg   = '#79B8FF'

function! s:hi(group, bg, fg, style) abort
  let l:gui = a:style ==# '' ? '' : 'gui=' . a:style
  let l:fg  = a:fg    ==# '' ? '' : 'guifg=' . a:fg
  let l:bg  = a:bg    ==# '' ? '' : 'guibg=' . a:bg
  execute 'hi ' . a:group . ' ' . l:bg . ' ' . l:fg . ' ' . l:gui
endfunction

" --- UI ---
call s:hi('Normal',        s:bg,        s:fg,         '')
call s:hi('NonText',       '',          s:comment,    '')
call s:hi('Whitespace',    '',          s:invisibles, '')
call s:hi('CursorLine',    s:linehl,    '',           '')
call s:hi('ColorColumn',   s:linehl,    '',           '')
call s:hi('SignColumn',    s:bg,        '',           '')
call s:hi('LineNr',        '',          '#6b727d',    '')
call s:hi('CursorLineNr',  '',          s:variable,   'bold')
call s:hi('Visual',        s:selection, '',           '')
call s:hi('Search',        '',          s:bg,         'bold')
call s:hi('IncSearch',     '',          s:bg,         'bold')
call s:hi('MatchParen',    '',          s:variable,   'bold')

" Popup / completion menu
call s:hi('Pmenu',         s:linehl,    s:fg,         '')
call s:hi('PmenuSel',      s:selection, s:bg,         'bold')
call s:hi('PmenuSbar',     s:linehl,    '',           '')
call s:hi('PmenuThumb',    s:fg,        '',           '')

" Status / misc
call s:hi('WildMenu',      s:linehl,    s:fg,         '')
call s:hi('ColorColumn',   s:linehl,    '',           '')
call s:hi('Folded',        '',          s:comment,    '')

" --- Core syntax (Vim groups) ---
call s:hi('Comment',       '',          s:comment,    'italic')
call s:hi('Constant',      '',          s:const,      '')
call s:hi('String',        '',          s:string,     '')
call s:hi('Character',     '',          s:string,     '')
call s:hi('Number',        '',          s:const,      '')
call s:hi('Boolean',       '',          s:const,      '')
call s:hi('Float',         '',          s:const,      '')

call s:hi('Identifier',    '',          s:variable,   '')
call s:hi('Function',      '',          s:entity,     'bold')

call s:hi('Statement',     '',          s:keyword,    '')
call s:hi('Operator',      '',          s:keyword,    '')
call s:hi('Keyword',       '',          s:keyword,    '')
call s:hi('Conditional',   '',          s:keyword,    '')
call s:hi('Repeat',        '',          s:keyword,    '')
call s:hi('Label',         '',          s:keyword,    '')

call s:hi('PreProc',       '',          s:const,      '')
call s:hi('Include',       '',          s:const,      '')
call s:hi('Define',        '',          s:const,      '')
call s:hi('Macro',         '',          s:entity,     '')
call s:hi('PreCondit',     '',          s:const,      '')

call s:hi('Type',          '',          s:keyword,    '')
call s:hi('StorageClass',  '',          s:keyword,    '')
call s:hi('Structure',     '',          s:keyword,    '')
call s:hi('Typedef',       '',          s:keyword,    '')

" Tags / markup
call s:hi('Tag',           '',          s:tagname,    '')
call s:hi('Delimiter',     '',          s:fg,         '')
call s:hi('Special',       '',          s:variable,   '')
call s:hi('SpecialComment','',          s:comment,    'italic')

" Diagnostics-like
call s:hi('Error',         s:bg,        s:errorfg,    'bold')
call s:hi('WarningMsg',    '',          s:warnfg,     '')
call s:hi('Todo',          s:variable,  s:bg,         'bold')

" Diff (from tmTheme)
call s:hi('DiffDelete',    s:diff_del_bg, s:diff_del_fg, '')
call s:hi('DiffAdd',       s:diff_ins_bg, s:diff_ins_fg, '')
call s:hi('DiffChange',    s:diff_chg_bg, s:diff_chg_fg, '')
call s:hi('DiffText',      '',            s:entity,      'bold')

" Bracket highlighter-ish
call s:hi('MatchParen',    '',          s:variable,   'bold')

" --- Legacy Treesitter links (Neovim will map many to @ captures) ---
hi! link TSComment Comment
hi! link TSString String
hi! link TSNumber Number
hi! link TSFloat Number
hi! link TSKeyword Keyword
hi! link TSOperator Operator
hi! link TSFunction Function
hi! link TSType Type
hi! link TSProperty Identifier
hi! link TSField Identifier
hi! link TSParameter Identifier
hi! link TSTag Tag
hi! link TSTagDelimiter Delimiter
hi! link TSPunctDelimiter Delimiter
hi! link TSPunctBracket Delimiter
hi! link TSPunctSpecial Delimiter

" --- Modern @captures (safe if you have newer Neovim) ---
hi! link @comment Comment
hi! link @string String
hi! link @number Number
hi! link @float Number
hi! link @keyword Keyword
hi! link @operator Operator
hi! link @function Function
hi! link @type Type
hi! link @property Identifier
hi! link @field Identifier
hi! link @parameter Identifier
hi! link @tag Tag
hi! link @tag.delimiter Delimiter
hi! link @string.documentation String

