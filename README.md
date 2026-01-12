# re_static
建築物のインタラクト可能なオブジェクトをリスト化し、触れなくします。<br>
# how to use
まずは範囲を指定します<br>
`/function re_static:scan/pos1`
`/function re_static:scan/pos2`<br>
これらのコマンドでコマンドの影響範囲を指定します(World Editみたいな感じ)<br>
その後、`/function re_static:scan/` を実行し、範囲内のブロックをリスト化します。<br>
それができたら`/function re_static:lock/`でリスト内のデータを使用し、ブロックにロックをかけます。<br>
# customize
アクションを起こすブロックを増やす手順<br>
ブロックタグ`re_static:interactive`に検知したいブロックidを追加します<br>
`re_static:scan/z/register`に追記してリストへ記入するidを決めます<br>
最後に`re_static:lock/z/apply`内を編集し、カスタム処理を実装します。