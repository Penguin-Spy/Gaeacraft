## gaeacraft:blocks/machine/pit_kiln/clay_pot_if_manager.mcfunction
# ran by newly placed clay pot armorstands when there already a pit_kiln manager armorstand where they are

# Check if manager has space
execute store success score $success gaeacraft.count if entity @e[type=armor_stand,tag=gaeacraft.pit_kiln.manager,distance=0...001,scores={gaeacraft.count=..3}]

#if manager is full, kill @s and drop item
#execute if score $success gaeacraft.count matches 1 run say adding @s to @e[type=armor_stand,tag=gaeacraft.pit_kiln.manager,distance=0...001]
# if manager does exist, if manager isn't full, add one to main's # of pots
execute if score $success gaeacraft.count matches 1 run scoreboard players add @e[type=armor_stand,tag=gaeacraft.pit_kiln.manager,distance=0...001] gaeacraft.count 1

#unless there's space, drop clay_pot item and remove ourselves
execute if score $success gaeacraft.count matches 0 if entity @s[tag=gaeacraft.pit_kiln.pot.bowl] run loot spawn ~ ~1 ~ loot gaeacraft:items/clay/unfired_bowl
execute if score $success gaeacraft.count matches 0 if entity @s[tag=gaeacraft.pit_kiln.pot.vessel] run loot spawn ~ ~1 ~ loot gaeacraft:items/clay/unfired_vessel
execute if score $success gaeacraft.count matches 0 if entity @s[tag=gaeacraft.pit_kiln.pot.jug] run loot spawn ~ ~1 ~ loot gaeacraft:items/clay/unfired_jug
execute if score $success gaeacraft.count matches 0 if entity @s[tag=gaeacraft.pit_kiln.pot.mold] run loot spawn ~ ~1 ~ loot gaeacraft:items/clay/unfired_mold
execute if score $success gaeacraft.count matches 0 run kill @s

# rotate ourselves to hold our item in the right spot
execute if entity @e[type=armor_stand,tag=gaeacraft.pit_kiln.manager,distance=0...001,scores={gaeacraft.count=2}] run tp @s ~.1 ~.21 ~.1 90 0
execute if entity @e[type=armor_stand,tag=gaeacraft.pit_kiln.manager,distance=0...001,scores={gaeacraft.count=3}] run tp @s ~-.1 ~.21 ~.1 180 0
execute if entity @e[type=armor_stand,tag=gaeacraft.pit_kiln.manager,distance=0...001,scores={gaeacraft.count=4}] run tp @s ~-.1 ~.21 ~-.1 270 0


# if manager is full now, convert it to be able to equip items
execute as @e[type=armor_stand,tag=gaeacraft.pit_kiln.manager,distance=0...001,scores={gaeacraft.count=4}] run data modify entity @s Marker set value 0b