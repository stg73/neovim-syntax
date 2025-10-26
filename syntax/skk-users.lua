-- SKKのユーザ辞書

-- 共通部分の読み込み
vim.cmd.runtime("ftplugin/skk.lua")
vim.cmd.runtime("syntax/skk.lua")

vim.cmd([[
syntax match okuriGennmitu_kouho_skk '\v\/@<=\[(.{-1,}\/)+\]\/@=' contains=bracket_okuriGennmitu_kouho_skk,delimiter_okuriGennmitu_kouho_skk,midasi_okuriGennmitu_kouho_skk,kouho_okuriGennmitu_kouho_skk,
    syntax match bracket_okuriGennmitu_kouho_skk '\v[][]' contained
    syntax match delimiter_okuriGennmitu_kouho_skk '\/' contained
    syntax match midasi_okuriGennmitu_kouho_skk '\v\[@<=.' contained
    syntax match kouho_okuriGennmitu_kouho_skk '\v\/@<=[^][/]+' contained
]])
vim.api.nvim_set_hl(0,'okuriGennmitu_kouho_skk',{})
    vim.api.nvim_set_hl(0,'bracket_okuriGennmitu_kouho_skk',{link = '@punctuation.bracket'})
    vim.api.nvim_set_hl(0,'delimiter_okuriGennmitu_kouho_skk',{link = 'delimiter_skk'})
    vim.api.nvim_set_hl(0,'midasi_okuriGennmitu_kouho_skk',{link = 'okuri_midasi_skk'})
    vim.api.nvim_set_hl(0,'kouho_okuriGennmitu_kouho_skk',{link = 'kouho_skk'})
