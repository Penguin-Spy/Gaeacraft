# detect player messing with the items
#execute at @s as @p[tag=gaeacraft.player.gui_available.toolmaking] if score @s gaeacraft.player = @e[type=armor_stand,tag=gaeacraft.gui_cart.toolmaking,sort=nearest,limit=1] gaeacraft.player run function gaeacraft:gui/toolmaking/player

# check for valid recipe
execute at @s as @e[type=chest_minecart,tag=gaeacraft.gui_cart.toolmaking] if score @s gaeacraft.player = @e[type=chest_minecart,tag=gaeacraft.gui_cart.toolmaking,distance=0,limit=1] gaeacraft.player run function gaeacraft:gui/toolmaking/detect