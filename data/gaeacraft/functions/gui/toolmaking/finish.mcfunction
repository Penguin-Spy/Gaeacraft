# decrements the items used to craft

# /item triggers the advancement trigger inventory_changed, which triggers this function via the function gaeacraft:inventory_changed
#so we must tell the event handler to ignore these changes
tag @s add gaeacraft.player.ignore_inventory_changed
item modify entity @s weapon.mainhand gaeacraft:remove_one
tag @s remove gaeacraft.player.ignore_inventory_changed

# decrement the items used to craft by 1
item modify entity @e[type=chest_minecart,tag=gaeacraft.gui_cart] container.11 gaeacraft:remove_one
item modify entity @e[type=chest_minecart,tag=gaeacraft.gui_cart] container.3 gaeacraft:remove_one
item modify entity @e[type=chest_minecart,tag=gaeacraft.gui_cart] container.2 gaeacraft:remove_one
item modify entity @e[type=chest_minecart,tag=gaeacraft.gui_cart] container.12 gaeacraft:remove_one

# end the GUI
function gaeacraft:gui/end