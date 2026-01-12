execute summon marker run function re_static:scan/z/list_up/run/get_coords

execute if block ~ ~ ~ chest run data modify storage re_static: list[-1].id set value "chest"
execute if block ~ ~ ~ decorated_pot run data modify storage re_static: list[-1].id set value "decorated_pot"
execute if block ~ ~ ~ #wooden_shelves run data modify storage re_static: list[-1].id set value "wooden_shelves"
execute if block ~ ~ ~ barrel run data modify storage re_static: list[-1].id set value "barrel"
execute if block ~ ~ ~ #all_signs run data modify storage re_static: list[-1].id set value "all_signs"