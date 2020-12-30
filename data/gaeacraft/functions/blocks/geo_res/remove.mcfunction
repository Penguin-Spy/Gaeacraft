execute store result score @s gaeacraft.count run data get entity @s HandItems[0].tag.CustomModelData

execute if score @s gaeacraft.count matches 1 run loot spawn ~ ~ ~ loot gaeacraft:blocks/rocks/gabbro
execute if score @s gaeacraft.count matches 2 run loot spawn ~ ~ ~ loot gaeacraft:blocks/rocks/limestone
execute if score @s gaeacraft.count matches 3 run loot spawn ~ ~ ~ loot gaeacraft:blocks/rocks/marble
execute if score @s gaeacraft.count matches 4 run loot spawn ~ ~ ~ loot gaeacraft:blocks/rocks/slate
execute if score @s gaeacraft.count matches 5 run loot spawn ~ ~ ~ loot gaeacraft:blocks/rocks/dolomite
execute if score @s gaeacraft.count matches 6 run loot spawn ~ ~ ~ loot gaeacraft:blocks/rocks/granite
execute if score @s gaeacraft.count matches 7 run loot spawn ~ ~ ~ loot gaeacraft:blocks/rocks/andesite
execute if score @s gaeacraft.count matches 8 run loot spawn ~ ~ ~ loot gaeacraft:blocks/rocks/diorite
execute if score @s gaeacraft.count matches 9 run loot spawn ~ ~ ~ loot gaeacraft:blocks/rocks/basalt

execute store result score @s gaeacraft.count run data get entity @s HandItems[1].tag.CustomModelData
#TODO: do black_stained_glass loottable for silk touch? and fortune
execute if score @s gaeacraft.count matches 30 run data modify entity @e[type=item,distance=0...5,nbt={Item:{tag:{silk_touch:0b}}},limit=1,sort=nearest] Item.tag set value {display:{Name:'{"translate":"item.gaeacraft.geo_res.ruby","italic":false}'},CustomModelData:130}
execute if score @s gaeacraft.count matches 31 run data modify entity @e[type=item,distance=0...5,nbt={Item:{tag:{silk_touch:0b}}},limit=1,sort=nearest] Item.tag set value {display:{Name:'{"translate":"item.gaeacraft.geo_res.topaz","italic":false}'},CustomModelData:131}
execute if score @s gaeacraft.count matches 32 run data modify entity @e[type=item,distance=0...5,nbt={Item:{tag:{silk_touch:0b}}},limit=1,sort=nearest] Item.tag set value {display:{Name:'{"translate":"item.gaeacraft.geo_res.peridot","italic":false}'},CustomModelData:132}
execute if score @s gaeacraft.count matches 33 run data modify entity @e[type=item,distance=0...5,nbt={Item:{tag:{silk_touch:0b}}},limit=1,sort=nearest] Item.id set value "minecraft:emerald"
execute if score @s gaeacraft.count matches 33 run data remove entity @e[type=item,distance=0...5,nbt={Item:{tag:{silk_touch:0b}}},limit=1,sort=nearest] Item.tag
execute if score @s gaeacraft.count matches 34 run data modify entity @e[type=item,distance=0...5,nbt={Item:{tag:{silk_touch:0b}}},limit=1,sort=nearest] Item.id set value "minecraft:diamond"
execute if score @s gaeacraft.count matches 34 run data remove entity @e[type=item,distance=0...5,nbt={Item:{tag:{silk_touch:0b}}},limit=1,sort=nearest] Item.tag
execute if score @s gaeacraft.count matches 35 run data modify entity @e[type=item,distance=0...5,nbt={Item:{tag:{silk_touch:0b}}},limit=1,sort=nearest] Item.id set value "minecraft:lapis_lazuli"
execute if score @s gaeacraft.count matches 35 run data remove entity @e[type=item,distance=0...5,nbt={Item:{tag:{silk_touch:0b}}},limit=1,sort=nearest] Item.tag
execute if score @s gaeacraft.count matches 36 run data modify entity @e[type=item,distance=0...5,nbt={Item:{tag:{silk_touch:0b}}},limit=1,sort=nearest] Item.tag set value {display:{Name:'{"translate":"item.gaeacraft.geo_res.sapphire","italic":false}'},CustomModelData:136}

stopsound @a[distance=0..16] block minecraft:block.glass.break
playsound block.stone.break block @a[distance=0..16] ~ ~ ~

kill @s