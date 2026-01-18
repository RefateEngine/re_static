kill @e[tag=re_static,distance=..0.5]

execute unless data block ~ ~ ~ lock run data merge block ~ ~ ~ {lock:{items:"air",count:1}}

execute if block ~ ~ ~ #wooden_shelves[facing=north] run summon interaction ~0.25 ~ ~0.35 {Tags:["re_static","re_static_wooden_shelves"],width:0.55,height:1.1}
execute if block ~ ~ ~ #wooden_shelves[facing=north] run summon interaction ~-0.25 ~ ~0.35 {Tags:["re_static","re_static_wooden_shelves"],width:0.55,height:1.1}

execute if block ~ ~ ~ #wooden_shelves[facing=east] run summon interaction ~-0.35 ~ ~0.25 {Tags:["re_static","re_static_wooden_shelves"],width:0.55,height:1.1}
execute if block ~ ~ ~ #wooden_shelves[facing=east] run summon interaction ~-0.35 ~ ~-0.25 {Tags:["re_static","re_static_wooden_shelves"],width:0.55,height:1.1}

execute if block ~ ~ ~ #wooden_shelves[facing=south] run summon interaction ~0.25 ~ ~-0.35 {Tags:["re_static","re_static_wooden_shelves"],width:0.55,height:1.1}
execute if block ~ ~ ~ #wooden_shelves[facing=south] run summon interaction ~-0.25 ~ ~-0.35 {Tags:["re_static","re_static_wooden_shelves"],width:0.55,height:1.1}

execute if block ~ ~ ~ #wooden_shelves[facing=west] run summon interaction ~0.35 ~ ~0.25 {Tags:["re_static","re_static_wooden_shelves"],width:0.55,height:1.1}
execute if block ~ ~ ~ #wooden_shelves[facing=west] run summon interaction ~0.35 ~ ~-0.25 {Tags:["re_static","re_static_wooden_shelves"],width:0.55,height:1.1}