# re_static 
建築物のインタラクト可能なオブジェクトをリスト化し、触れなくします。 
 
# how to use 
まずは範囲を指定します 
`/function re_static:scan/pos1`  
`/function re_static:scan/pos2` 
これらのコマンドでコマンドの影響範囲を指定します(World Editみたいな感じ) 
 
その後、`/function re_static:scan/` を実行し、範囲内のブロックをリスト化します。 
 
それができたら`/function re_static:lock/`でリスト内のデータを使用し、ブロックにロックをかけます。 

# customize
アクションを起こすブロックを増やす手順
ブロックタグ`re_static:interactive`に検知したいブロックidを追加します 
`re_static:scan/z/register`に追記してリストへ記入するidを決めます 
最後に`re_static:lock/z/apply`内を編集し、カスタム処理を実装します。 
