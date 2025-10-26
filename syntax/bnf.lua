vim.cmd([[
syntax match terminal_symbol.bnf '\v[^ ]{-1,}'
syntax match nonterminal_symbol.bnf '\v\<.{-1,}\>'
syntax match operator.bnf '\v::\=|\='
syntax match delimiter.bnf '|'
syntax match string.bnf '\v".{-}"|\'.{-}\''
syntax match invalid_expression.bnf '\v^( *\<.+\> (::\=|\=) .*[^ |]$)@!.+'
]])

vim.api.nvim_set_hl(0,'terminal_symbol.bnf',{link = 'constant'})
vim.api.nvim_set_hl(0,'nonterminal_symbol.bnf',{link = '@variable'})
vim.api.nvim_set_hl(0,'operator.bnf',{link = '@operator'})
vim.api.nvim_set_hl(0,'delimiter.bnf',{link = '@punctuation.delimiter'})
vim.api.nvim_set_hl(0,'string.bnf',{link = 'string'})
vim.api.nvim_set_hl(0,'invalid_expression.bnf',{link = 'error'})
