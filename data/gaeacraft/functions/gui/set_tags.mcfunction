# tag entities we need to access
tag @s add gaeacraft.temp.minecart_gui
execute as @e[type=armor_stand,tag=gaeacraft.gui_cart] if score @s gaeacraft.player = @p[distance=0] gaeacraft.player run tag @s add gaeacraft.temp.minecart_gui
execute as @e[type=chest_minecart,tag=gaeacraft.gui_cart] if score @s gaeacraft.player = @p[distance=0] gaeacraft.player run tag @s add gaeacraft.temp.minecart_gui

# check for changes & tick guis if so
execute as @e[type=armor_stand,tag=gaeacraft.temp.minecart_gui,limit=1] run function gaeacraft:gui/main

# clear tags used to keep track of the entities we need to reference during this function
tag @e[tag=gaeacraft.temp.minecart_gui] remove gaeacraft.temp.minecart_gui