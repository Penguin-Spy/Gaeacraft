# decrements the items used to craft

# /item triggers the advancement trigger inventory_changed, which triggers this function via the function gaeacraft:events/inventory_changed
#so we must tell the event handler to ignore these changes
tag @s add gaeacraft.player.ignore_inventory_changed
item modify entity @s[tag=gaeacraft.player.gui_available.knapping.stone] weapon.mainhand gaeacraft:remove_one
item modify entity @s[tag=gaeacraft.player.gui_available.knapping.stone] weapon.offhand gaeacraft:remove_one
item modify entity @s[tag=gaeacraft.player.gui_available.knapping.clay] weapon.mainhand gaeacraft:remove_three
tag @s remove gaeacraft.player.ignore_inventory_changed

function gaeacraft:gui/end