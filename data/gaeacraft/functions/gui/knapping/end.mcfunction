# Silently removes the minecart & armorstand, and clears tags

execute as @e[type=chest_minecart,tag=gaeacraft.temp.knapping,limit=1] run data remove entity @s Items[{id:"minecraft:feather",tag:{CustomModelData:10}}]
execute as @e[type=chest_minecart,tag=gaeacraft.temp.knapping,limit=1] run data remove entity @s Items[{id:"minecraft:scute",Slot:15b}]
execute as @e[type=!player,tag=gaeacraft.temp.knapping] run kill @s
tag @s remove gaeacraft.player.gui_available.knapping

# clear tag used to keep track of the entities we need to reference during this function
tag @s remove gaeacraft.temp.knapping

# clear button items (if the GUI was closed by the player swapping a stone with a button using the # keys)
clear @s feather{CustomModelData:10}