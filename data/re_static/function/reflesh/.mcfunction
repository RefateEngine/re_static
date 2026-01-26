# リストの内容を一個ずつ見てロックをかける

data modify storage re_static: reflesh.list set from storage re_static: list

function re_static:reflesh/z/loop

tellraw @s {"translate":"%1$s リフレッシュが正常に完了しました","with":[{"text":"[re_static]","color":"gold"}]}