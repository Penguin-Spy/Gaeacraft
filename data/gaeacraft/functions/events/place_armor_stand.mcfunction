## gaeacraft:events/place_armor_stand.mcfunction
# Ran by a player when they place an armor_stand item
advancement revoke @s only gaeacraft:utility/place_armor_stand

execute as @e[type=armor_stand,tag=gaeacraft.just_placed,tag=gaeacraft.pit_kiln.pot] at @s align xyz positioned ~.5 ~ ~.5 run function gaeacraft:blocks/machine/pit_kiln/clay_pot_placed

tag @e[type=armor_stand,tag=gaeacraft.just_placed] remove gaeacraft.just_placed