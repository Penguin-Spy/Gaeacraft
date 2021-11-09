## gaeacraft:events/equip_armor_stand.mcfunction
# Ran by a player when they equip an item onto an armor_stand
advancement revoke @s only gaeacraft:utility/equip_armor_stand

execute as @e[type=armor_stand,tag=gaeacraft.pit_kiln.manager,nbt={HandItems:[{}]}] at @s align xyz positioned ~.5 ~ ~.5 run function gaeacraft:blocks/machine/pit_kiln/manager_equipped
