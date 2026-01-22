# ドアじゃない場合終了
execute unless block ~ ~ ~ #minecraft:doors run return fail

# 閉まっている場合終了
execute if block ~ ~ ~ #minecraft:doors[open=false] run return fail

# half=upperの場合lowerへ移動して実行
execute if block ~ ~ ~ #minecraft:doors[half=upper] positioned ~ ~-1 ~ run return run function re_static:update/door/close

data modify storage re_static: update.door set value {id:"",facing:"",hinge:"",powered:"",open:""}

# id
execute summon item_display run function re_static:update/door/z/as_displawy

# facing
execute if block ~ ~ ~ #minecraft:doors[facing=north] run data modify storage re_static: update.door.facing set value "north"
execute if block ~ ~ ~ #minecraft:doors[facing=south] run data modify storage re_static: update.door.facing set value "south"
execute if block ~ ~ ~ #minecraft:doors[facing=east] run data modify storage re_static: update.door.facing set value "east"
execute if block ~ ~ ~ #minecraft:doors[facing=west] run data modify storage re_static: update.door.facing set value "west"

# hinge
execute if block ~ ~ ~ #minecraft:doors[hinge=left] run data modify storage re_static: update.door.hinge set value "left"
execute if block ~ ~ ~ #minecraft:doors[hinge=right] run data modify storage re_static: update.door.hinge set value "right"

# powered
execute if block ~ ~ ~ #minecraft:doors[powered=true] run data modify storage re_static: update.door.powered set value "true"
execute if block ~ ~ ~ #minecraft:doors[powered=false] run data modify storage re_static: update.door.powered set value "false"

# open
data modify storage re_static: update.door.open set value "false"

# replace
function re_static:update/door/z/replace with storage re_static: update.door

data remove storage re_static: update.door

# sound
function re_static:update/door/z/sound/close