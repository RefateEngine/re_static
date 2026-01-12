data modify storage re_static: tmp.pos set from entity @s Pos
data modify storage re_static: pos.1 set value {x:0d,y:0d,z:0d}
data modify storage re_static: pos.1.x set from storage re_static: tmp.pos[0]
data modify storage re_static: pos.1.y set from storage re_static: tmp.pos[1]
data modify storage re_static: pos.1.z set from storage re_static: tmp.pos[2]

data remove storage re_static: tmp.pos
kill @s