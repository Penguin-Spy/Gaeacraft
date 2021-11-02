# Gets called for every slot that changes
#also called whenever a player's selected hotbar slot changes

#clear the advancement that may have triggered this
advancement revoke @s only gaeacraft:utility/inventory_changed

## Checks

#Mining fatigue / Adventure mode
execute if entity @s[gamemode=!creative,tag=!gaeacraft.player.holding_tool,predicate=gaeacraft:holding_tool] run function gaeacraft:tools/start_holding
execute if entity @s[gamemode=!creative,tag=gaeacraft.player.holding_tool,predicate=!gaeacraft:holding_tool] run function gaeacraft:tools/stop_holding

#Knapping gui
execute if entity @s[tag=!gaeacraft.player.gui_available.knapping,predicate=gaeacraft:gui_available/knapping] run function gaeacraft:gui/knapping/start
execute if entity @s[tag=gaeacraft.player.gui_available.knapping,predicate=!gaeacraft:gui_available/knapping] run function gaeacraft:gui/knapping/end

#Toolmaking gui
execute if entity @s[tag=!gaeacraft.player.gui_available.toolmaking,predicate=gaeacraft:gui_available/toolmaking] run function gaeacraft:gui/toolmaking/start
execute if entity @s[tag=gaeacraft.player.gui_available.toolmaking,predicate=!gaeacraft:gui_available/toolmaking] run function gaeacraft:gui/toolmaking/end

#prevent shift+clicking of helmets (and player heads, like the custom blocks)
#this does not fix the fact that you can still place them on manually, with a stack of one, but it makes inventory management much less annoying.
execute unless data entity @s Inventory[{Slot:103b,id:"minecraft:feather"}] run clear @s minecraft:feather{CustomModelData:3}
execute unless data entity @s Inventory[{Slot:103b}] run item replace entity @s armor.head with minecraft:feather{CustomModelData:3,display:{Name:'{"translate":"empty"}'}}
