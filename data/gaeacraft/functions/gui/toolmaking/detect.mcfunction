# detects if there is a recipe in the table

# if outputting & no 15, run :finish
execute if entity @s[tag=gaeacraft.gui_cart.toolmaking.toolmaking.has_output] unless data entity @s Items[{Slot:15b}] as @p[tag=gaeacraft.temp.minecart_gui,limit=1] run function gaeacraft:gui/toolmaking/finish


# if not outputting & 15, run :dump_output
execute if entity @s[tag=!gaeacraft.gui_cart.toolmaking.has_output] if data entity @s Items[{Slot:15b}] run function gaeacraft:gui/dump_output

# store success if outputting & 15, copy 15 to armorstand data.15
scoreboard players set $success gaeacraft.count 0
execute if entity @s[tag=gaeacraft.gui_cart.toolmaking.has_output] if data entity @s Items[{Slot:15b}] store success score $success gaeacraft.count run data modify entity @e[type=armor_stand,tag=gaeacraft.temp.minecart_gui,limit=1] ArmorItems[3].tag.output set from entity @s Items[{Slot:15b}]
# if success, run :dump_output
execute if score $success gaeacraft.count matches 1 run function gaeacraft:gui/dump_output
execute if score $success gaeacraft.count matches 1 as @p[tag=gaeacraft.temp.minecart_gui,limit=1] run function gaeacraft:gui/toolmaking/finish

# clear 15
# clear outputting
data remove entity @s Items[{Slot:15b}]
tag @s remove gaeacraft.gui_cart.toolmaking.has_output

##Recipes

# stone axe
execute if data entity @s Items[{Slot:1b,id:"minecraft:scute",tag:{CustomModelData:1}}] if data entity @s Items[{Slot:11b,id:"minecraft:feather",tag:{CustomModelData:600}}] if data entity @s Items[{Slot:19b,id:"minecraft:stick"}] unless data entity @s Items[{Slot:21b}] run function gaeacraft:gui/toolmaking/output/stone_axe

# stone hoe
execute if data entity @s Items[{Slot:1b,id:"minecraft:scute",tag:{CustomModelData:2}}] if data entity @s Items[{Slot:11b,id:"minecraft:feather",tag:{CustomModelData:600}}] if data entity @s Items[{Slot:19b,id:"minecraft:stick"}] unless data entity @s Items[{Slot:21b}] run function gaeacraft:gui/toolmaking/output/stone_hoe

# stone hammer
execute if data entity @s Items[{Slot:1b,id:"minecraft:scute",tag:{CustomModelData:3}}] if data entity @s Items[{Slot:11b,id:"minecraft:feather",tag:{CustomModelData:600}}] if data entity @s Items[{Slot:19b,id:"minecraft:stick"}] unless data entity @s Items[{Slot:21b}] run function gaeacraft:gui/toolmaking/output/stone_hammer

# stone shovel
execute if data entity @s Items[{Slot:1b,id:"minecraft:scute",tag:{CustomModelData:4}}] if data entity @s Items[{Slot:11b,id:"minecraft:feather",tag:{CustomModelData:600}}] if data entity @s Items[{Slot:19b,id:"minecraft:stick"}] unless data entity @s Items[{Slot:21b}] run function gaeacraft:gui/toolmaking/output/stone_shovel

# stone spear
execute if data entity @s Items[{Slot:1b,id:"minecraft:scute",tag:{CustomModelData:5}}] if data entity @s Items[{Slot:11b,id:"minecraft:feather",tag:{CustomModelData:600}}] if data entity @s Items[{Slot:19b,id:"minecraft:stick"}] unless data entity @s Items[{Slot:21b}] run function gaeacraft:gui/toolmaking/output/stone_spear

# stone knife
execute if data entity @s Items[{Slot:1b,id:"minecraft:scute",tag:{CustomModelData:6}}] if data entity @s Items[{Slot:11b,id:"minecraft:feather",tag:{CustomModelData:600}}] if data entity @s Items[{Slot:19b,id:"minecraft:stick"}] unless data entity @s Items[{Slot:21b}] run function gaeacraft:gui/toolmaking/output/stone_knife

##End Recipes

#END: if outputting, copy 15 to armorstand data.15
execute if entity @s[tag=gaeacraft.gui_cart.toolmaking.has_output] run data modify entity @e[type=armor_stand,tag=gaeacraft.temp.minecart_gui,limit=1] ArmorItems[3].tag.output set from entity @s Items[{Slot:15b}]

# clear tags used to keep track of the entities we need to reference during this function
tag @e[tag=gaeacraft.temp.minecart_gui] remove gaeacraft.temp.minecart_gui