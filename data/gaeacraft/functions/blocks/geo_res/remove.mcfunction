# Silk touch
execute if entity @e[type=item,distance=0...5,nbt={Item:{tag:{silk_touch:1b}}},limit=1,sort=nearest] run function gaeacraft:blocks/geo_res/remove_silk_touch

# Fortune / No enchantment
execute if entity @e[type=item,distance=0...5,nbt={Item:{tag:{silk_touch:0b}}},limit=1,sort=nearest] run function gaeacraft:blocks/geo_res/remove_fortune

# Particle
execute if entity @s[nbt={HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:1b}}]}] run particle minecraft:block minecraft:stone ~ ~ ~ -.25 .25 -.25 1 30 force
execute if entity @s[nbt={HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:2b}}]}] run particle minecraft:dust 0.69 0.643 0.541 1 ~ ~ ~ -.25 -.25 -.25 0 30 force
execute if entity @s[nbt={HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:3b}}]}] run particle minecraft:dust 0.8 0.792 0.776 1 ~ ~ ~ -.25 -.25 -.25 0 30 force
execute if entity @s[nbt={HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:4b}}]}] run particle minecraft:dust 0.29 0.294 0.298 1 ~ ~ ~ -.25 -.25 -.25 0 30 force
execute if entity @s[nbt={HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:5b}}]}] run particle minecraft:dust 0.207 0.227 0.262 1 ~ ~ ~ -.25 -.25 -.25 0 30 force
execute if entity @s[nbt={HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:6b}}]}] run particle minecraft:block minecraft:granite ~ ~ ~ -.25 .25 -.25 1 30 force
execute if entity @s[nbt={HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7b}}]}] run particle minecraft:block minecraft:diorite ~ ~ ~ -.25 .25 -.25 1 30 force
execute if entity @s[nbt={HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:8b}}]}] run particle minecraft:block minecraft:andesite ~ ~ ~ -.25 .25 -.25 1 30 force
execute if entity @s[nbt={HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9b}}]}] run particle minecraft:block minecraft:basalt ~ ~ ~ -.25 .25 -.25 1 30 force

# Cleanup
kill @s