tag @s add gaeacraft.temp.knapping
execute as @e[type=armor_stand,tag=gaeacraft.gui_cart.knapping] if score @s gaeacraft.player = @p[distance=0] gaeacraft.player run tag @s add gaeacraft.temp.knapping
execute as @e[type=chest_minecart,tag=gaeacraft.gui_cart.knapping] if score @s gaeacraft.player = @p[distance=0] gaeacraft.player run tag @s add gaeacraft.temp.knapping

execute as @e[type=armor_stand,tag=gaeacraft.temp.knapping,limit=1] run function gaeacraft:gui/knapping/main