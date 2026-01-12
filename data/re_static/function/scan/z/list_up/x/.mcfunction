function re_static:scan/z/list_up/run/

# yも処理
scoreboard players operation #re_static_y re_static = #re_static_save_y re_static
function re_static:scan/z/list_up/y/
# まだ処理があればループ
execute if score #re_static_x re_static matches 1.. run scoreboard players remove #re_static_x re_static 1
execute if score #re_static_x re_static matches 1.. positioned ~1 ~ ~ run return run function re_static:scan/z/list_up/x/

execute if score #re_static_x re_static matches ..-1 run scoreboard players add #re_static_x re_static 1
execute if score #re_static_x re_static matches ..-1 positioned ~-1 ~ ~ run return run function re_static:scan/z/list_up/x/

tellraw @s {"translate":"%1$s リストアップが正常に完了しました","with":[{"text":"[re_static]","color":"gold"}]}