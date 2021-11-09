## gaeacraft:blocks/machine/pit_kiln/clay_pot_placed.mcfunction
# Ran by new clay_pot armor_stands (the stand that gets summoned when the player places a clay pot down)
# Checks for a pit kiln main armor_stand where it is, and if it doesn't exist, try to place one
# if it does exist, check if there's space for this clay pot

execute positioned ~ ~-1 ~ if entity @e[type=armor_stand,tag=gaeacraft.pit_kiln.manager,distance=0...001] run function gaeacraft:blocks/machine/pit_kiln/clay_pot_if_manager
execute positioned ~ ~-1 ~ unless entity @e[type=armor_stand,tag=gaeacraft.pit_kiln.manager,distance=0...001] run function gaeacraft:blocks/machine/pit_kiln/clay_pot_unless_manager