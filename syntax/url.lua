vim.cmd([[
syntax match percentEncoding_url '\v\%\x\x' containedin=ALL
syntax match scheme_url '\v^[^:]+'
syntax match delimiter_url '\v[/.:]' containedin=ALL
syntax match domain_url '\v(\/\/)@<=[^:/]+' contains=top_domain_url,hoge_domain_url
    syntax match hoge_domain_url '\v(\/\/)@<=[^.]+' contained " floorpのアドレスバーのURLのドメインのハイライトに似せる
    syntax match top_domain_url '\v[^./]+\/@=' contained
syntax match port_url '\v:@<=\d+\/@='
syntax match path_url '\v(\/\/[^/]+)@<=\/[^#?]+'
    syntax match top_path_url '\v(\/\/[^/]+\/)@<=[^/?#]+' contained containedin=path_url
    syntax match file_path_url '\v\/@<=[^/?#]+(\?|\#|$)@=' contained containedin=path_url
syntax match parameters_url '\v\?[^#]+' contains=parameter_url
    syntax match parameter_url '\v[?&]@<=[^#&]+' contained contains=key_parameter_url,operator_parameter_url,value_parameter_url
        syntax match key_parameter_url '\v\a+\=@=' contained
        syntax match operator_parameter_url '=' contained
        syntax match value_parameter_url '\v\=@<=[^&#]+' contained
        syntax match encoding_url '\v\+' contained containedin=value_parameter_url
syntax match anchor_url '\v#.+'
]])

vim.api.nvim_set_hl(0,"percentEncoding_url",{link = "@string.escape"})
vim.api.nvim_set_hl(0,"scheme_url",{link = "statement"})
vim.api.nvim_set_hl(0,"delimiter_url",{link = "@punctuation.delimiter"})
vim.api.nvim_set_hl(0,"domain_url",{link = "@variable.member"})
    vim.api.nvim_set_hl(0,"top_domain_url",{link = "@variable"})
    vim.api.nvim_set_hl(0,"hoge_domain_url",{link = "function"})
vim.api.nvim_set_hl(0,"port_url",{link = "number"})
vim.api.nvim_set_hl(0,"path_url",{link = "@variable.member"})
    vim.api.nvim_set_hl(0,"top_path_url",{link = "@variable"})
    vim.api.nvim_set_hl(0,"file_path_url",{link = "function"})
vim.api.nvim_set_hl(0,"parameters_url",{link = "@keyword"})
    vim.api.nvim_set_hl(0,"parameter_url",{})
        vim.api.nvim_set_hl(0,"key_parameter_url",{link = "@property"})
        vim.api.nvim_set_hl(0,"operator_parameter_url",{link = "@operator"})
        vim.api.nvim_set_hl(0,"value_parameter_url",{link = "string"})
        vim.api.nvim_set_hl(0,"encoding_url",{link = "@string.escape"})
vim.api.nvim_set_hl(0,"anchor_url",{link = "@variable.member"})
