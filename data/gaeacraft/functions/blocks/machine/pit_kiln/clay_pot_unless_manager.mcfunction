## gaeacraft:blocks/machine/pit_kiln/clay_pot_unless_manager.mcfunction
# ran by newly placed clay pot armorstands when there's no pit_kiln manager armorstand where they are

# Check if this is a valid place to put a pit_kiln
execute store success score $success gaeacraft.count positioned ~ ~1 ~ if predicate gaeacraft:valid_pit_kiln

#if predicate pit_kiln true, summon manager
execute if score $success gaeacraft.count matches 1 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ShowArms:1b,Tags:["gaeacraft.pit_kiln.manager","gaeacraft.just_summoned"],ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:400}}],DisabledSlots:4096}
scoreboard players set @e[type=armor_stand,tag=gaeacraft.just_summoned] gaeacraft.count 1
tag @e[type=armor_stand,tag=gaeacraft.just_summoned] remove gaeacraft.just_summoned
execute if score $success gaeacraft.count matches 1 run tp @s ~.1 ~.21 ~-.1 0 0

#unless predicate, drop clay_pot item and remove ourselves
execute if score $success gaeacraft.count matches 0 if entity @s[tag=gaeacraft.pit_kiln.pot.bowl] run loot spawn ~ ~1 ~ loot gaeacraft:items/clay/unfired_bowl
execute if score $success gaeacraft.count matches 0 if entity @s[tag=gaeacraft.pit_kiln.pot.vessel] run loot spawn ~ ~1 ~ loot gaeacraft:items/clay/unfired_vessel
execute if score $success gaeacraft.count matches 0 if entity @s[tag=gaeacraft.pit_kiln.pot.jug] run loot spawn ~ ~1 ~ loot gaeacraft:items/clay/unfired_jug
execute if score $success gaeacraft.count matches 0 if entity @s[tag=gaeacraft.pit_kiln.pot.mold] run loot spawn ~ ~1 ~ loot gaeacraft:items/clay/unfired_mold
execute if score $success gaeacraft.count matches 0 run kill @s