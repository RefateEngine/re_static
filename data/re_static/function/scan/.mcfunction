# pos1からpos2を目指すときに、どの方向にいくつ移動すればいいか確認する。

execute unless data storage re_static: pos.1 run return run tellraw @s {"translate":"%1$s Pos1が設定されていません","with":[{"text":"[re_static]","color":"gold"}]}
execute unless data storage re_static: pos.2 run return run tellraw @s {"translate":"%1$s Pos2が設定されていません","with":[{"text":"[re_static]","color":"gold"}]}

# x
execute store result score #re_static_x re_static run data get storage re_static: pos.2.x
execute store result score #re_static_calc re_static run data get storage re_static: pos.1.x
scoreboard players operation #re_static_x re_static -= #re_static_calc re_static

# y
execute store result score #re_static_y re_static run data get storage re_static: pos.2.y
execute store result score #re_static_calc re_static run data get storage re_static: pos.1.y
scoreboard players operation #re_static_y re_static -= #re_static_calc re_static

# z
execute store result score #re_static_z re_static run data get storage re_static: pos.2.z
execute store result score #re_static_calc re_static run data get storage re_static: pos.1.z
scoreboard players operation #re_static_z re_static -= #re_static_calc re_static

scoreboard players operation #re_static_save_x re_static = #re_static_x re_static
scoreboard players operation #re_static_save_y re_static = #re_static_y re_static
scoreboard players operation #re_static_save_z re_static = #re_static_z re_static

data modify storage re_static: list set value []

tellraw @s [{"translate":"%1$s スキャン範囲(大きさ): X: %2$s Y:%3$s Z:%4$s","with":[{"text":"[re_static]","color":"gold"},{"score":{"name":"#re_static_x","objective":"re_static"}},{"score":{"name":"#re_static_y","objective":"re_static"}},{"score":{"name":"#re_static_z","objective":"re_static"}}]},"\n",{"translate":"リストアップを開始します。終了メッセージが表示されない場合、gameruleでコマンドの実行数制限を緩和してください","with":[{"text":"[re_static]","color":"gold"}]}]

function re_static:scan/z/list_up/start with storage re_static: pos.1
