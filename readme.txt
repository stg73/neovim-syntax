neovim用の"syntax"コマンドを使ったシンタクスハイライト

使い方
    このディレクトリをruntimepathに追加する

以下 それぞれのシンタクスハイライトの説明

bnf
    バッカス・ナウア記法

regex
    vimの正規表現
    "very magic"もしくは"very nomagic"のみ正しくハイライトできる

skk
    ユーザ辞書以外のSKK辞書
    lispに対応

skk-users
    SKKのユーザ辞書
    ユーザ辞書にしかない"[う/使/遣/]"のようなものに対応

skk-specialized
    特定分野に関するSKK辞書
    候補の分類を取得し それが含まれない候補をエラーにする
    luaのモジュール"skk"が必要
    更にモジュール"skk_commands"の関数"annotate"を使うと 分類注釈の追加が楽にできる
    モジュールの場所は"https://github.com/stg73/lua-modules"

url
    URL
