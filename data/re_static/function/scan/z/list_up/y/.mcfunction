function re_static:scan/z/list_up/run/

# zも処理
scoreboard players operation #re_static_z re_static = #re_static_save_z re_static
function re_static:scan/z/list_up/z/
# まだ処理があればループ
execute if score #re_static_y re_static matches 1.. run scoreboard players remove #re_static_y re_static 1
execute if score #re_static_y re_static matches 1.. positioned ~ ~1 ~ run return run function re_static:scan/z/list_up/y/

execute if score #re_static_y re_static matches ..-1 run scoreboard players add #re_static_y re_static 1
execute if score #re_static_y re_static matches ..-1 positioned ~ ~-1 ~ run return run function re_static:scan/z/list_up/y/

