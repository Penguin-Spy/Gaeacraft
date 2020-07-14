execute if data block ~ ~ ~ Items[{Slot:15b}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b,tag:{loot_table_recipes:{replace:1b}}}}
execute if data block ~ ~ ~ Items[{Slot:15b}] run data modify entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{loot_table_recipes:{replace:1b}}}}] Item set from block ~ ~ ~ Items[{Slot:15b}]
data remove block ~ ~ ~ Items[{Slot:15b}]