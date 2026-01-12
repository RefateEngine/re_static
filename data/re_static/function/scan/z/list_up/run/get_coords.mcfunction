data modify storage re_static: tmp.listup_coords set from entity @s Pos
data modify storage re_static: listup_coords set value {x:0d,y:0d,z:0d,id:empty}
data modify storage re_static: listup_coords.x set from storage re_static: tmp.listup_coords[0]
data modify storage re_static: listup_coords.y set from storage re_static: tmp.listup_coords[1]
data modify storage re_static: listup_coords.z set from storage re_static: tmp.listup_coords[2]

data modify storage re_static: list append from storage re_static: listup_coords
data remove storage re_static: tmp.listup_coords
kill @s