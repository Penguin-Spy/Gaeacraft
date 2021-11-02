# Silently removes the minecart & armorstand, and clears tags

execute at @s as @e[type=chest_minecart,tag=gaeacraft.gui_cart.knapping] if score @s gaeacraft.player = @p[distance=0] gaeacraft.player run data remove entity @s Items
execute at @s as @e[tag=gaeacraft.gui_cart.knapping] if score @s gaeacraft.player = @p[distance=0] gaeacraft.player run kill @s
tag @s remove gaeacraft.player.gui_available.knapping