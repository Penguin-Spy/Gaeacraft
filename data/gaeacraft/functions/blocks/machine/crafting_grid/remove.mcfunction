kill @e[type=minecraft:chest_minecart,tag=gaeacraft.cct.chest_minecart,distance=0...75]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:feather",tag:{CustomModelData:2}}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:minecart",Count:1b}},distance=0..2]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:chest",Count:1b}},distance=0..2]
loot spawn ~ ~.5 ~ loot gaeacraft:blocks/machines/crafting_grid
kill @s