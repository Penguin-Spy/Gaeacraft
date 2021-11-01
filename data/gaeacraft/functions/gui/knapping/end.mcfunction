# Silently removes the minecart & armorstand, clears tags, and decrements the items used to craft

execute at @s as @e[type=chest_minecart,tag=gaeacraft.gui_cart.knapping] if score @s gaeacraft.player = @p[distance=0] gaeacraft.player run data remove entity @s Items
execute at @s as @e[tag=gaeacraft.gui_cart.knapping] if score @s gaeacraft.player = @p[distance=0] gaeacraft.player run kill @s
tag @s remove gaeacraft.player.can_knap

# /item triggers the advancement trigger inventory_changed, which triggers this function via the function gaeacraft:inventory_changed
#so we must tell the event handler to ignore these changes
tag @s add gaeacraft.player.ignore_inventory_changed
item modify entity @s weapon.mainhand gaeacraft:remove_one
item modify entity @s weapon.offhand gaeacraft:remove_one
tag @s remove gaeacraft.player.ignore_inventory_changed