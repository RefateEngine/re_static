function re_static:scan/z/list_up/run/

# まだ処理があればループ
execute if score #re_static_z re_static matches 1.. run scoreboard players remove #re_static_z re_static 1
execute if score #re_static_z re_static matches 1.. positioned ~ ~ ~1 run return run function re_static:scan/z/list_up/z/

execute if score #re_static_z re_static matches ..-1 run scoreboard players add #re_static_z re_static 1
execute if score #re_static_z re_static matches ..-1 positioned ~ ~ ~-1 run return run function re_static:scan/z/list_up/z/