# リストの内容を一個ずつ見てロックをかける

data modify storage re_static: lock.list set from storage re_static: list

function re_static:lock/z/loop

tellraw @s {"translate":"%1$s ロックが正常に完了しました","with":[{"text":"[re_static]","color":"gold"}]}