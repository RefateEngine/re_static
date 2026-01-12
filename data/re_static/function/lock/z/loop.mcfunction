data modify storage re_static: lock.front set from storage re_static: lock.list[-1]

function re_static:lock/z/coords with storage re_static: lock.front

data remove storage re_static: lock.list[-1]
execute if data storage re_static: lock.list[0] run function re_static:lock/z/loop