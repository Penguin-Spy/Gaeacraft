## gaeacraft:blocks/machine/pit_kiln/manager_equipped.mcfunction
# Ran bt pit_kiln armor stands when a player adds an item to them

# wheat
execute store success score $success gaeacraft.count if entity @s[scores={gaeacraft.count=4..7},nbt={HandItems:[{id:"minecraft:wheat"}]}]
execute if score $success gaeacraft.count matches 1 run scoreboard players add @s gaeacraft.count 1
execute if score $success gaeacraft.count matches 1 run data remove entity @s HandItems[0]
execute if score $success gaeacraft.count matches 1 if score @s gaeacraft.count matches 5 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 401
execute if score $success gaeacraft.count matches 1 if score @s gaeacraft.count matches 6 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 402
execute if score $success gaeacraft.count matches 1 if score @s gaeacraft.count matches 7 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 403
execute if score $success gaeacraft.count matches 1 if score @s gaeacraft.count matches 8 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 404

# logs
execute store success score $success gaeacraft.count if entity @s[scores={gaeacraft.count=8..9},nbt={HandItems:[{id:"minecraft:oak_log"}]}]
execute if score $success gaeacraft.count matches 1 run scoreboard players add @s gaeacraft.count 1
execute if score $success gaeacraft.count matches 1 run data remove entity @s HandItems[0]
execute if score $success gaeacraft.count matches 1 if score @s gaeacraft.count matches 9 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 405
execute if score $success gaeacraft.count matches 1 if score @s gaeacraft.count matches 10 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 406
execute if score $success gaeacraft.count matches 1 if score @s gaeacraft.count matches 10 run setblock ~ ~1 ~ black_stained_glass

# drop remaning items in hand
data remove block 1 0 0 Items
data modify block 1 0 0 Items append from entity @s HandItems[0]
data remove entity @s HandItems[0]
loot spawn ~ ~1 ~ mine 1 0 0 air{drop_contents:1b}