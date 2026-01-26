data modify storage re_static: reflesh.front set from storage re_static: reflesh.list[-1]

function re_static:reflesh/z/coords with storage re_static: reflesh.front

data remove storage re_static: reflesh.list[-1]
execute if data storage re_static: reflesh.list[0] run function re_static:reflesh/z/loop