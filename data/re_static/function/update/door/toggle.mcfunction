# ドアじゃない場合終了
execute unless block ~ ~ ~ #minecraft:doors run return fail

# 空いてる場合閉じる
execute if block ~ ~ ~ #minecraft:doors[open=true] run return run function re_static:update/door/close
# 閉まっている場合開ける
execute if block ~ ~ ~ #minecraft:doors[open=false] run return run function re_static:update/door/open