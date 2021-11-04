# detects if there is a recipe in the table

# fix widgets and enable slots based on items in the gui
function gaeacraft:gui/toolmaking/fix_widgets


# only dump sometimes
#OR
# tag items we want to keep,
execute if entity @s[tag=gaeacraft.gui_cart.toolmaking.binding] run data modify entity @s Items[{Slot:11b}] merge value {tag:{gaeacraft_temp:{gui_dont_dump:1b}}}
execute if entity @s[tag=gaeacraft.gui_cart.toolmaking.one_head] run data modify entity @s Items[{Slot:3b}] merge value {tag:{gaeacraft_temp:{gui_dont_dump:1b}}}
execute if entity @s[tag=gaeacraft.gui_cart.toolmaking.two_heads] run data modify entity @s Items[{Slot:2b}] merge value {tag:{gaeacraft_temp:{gui_dont_dump:1b}}}
execute if entity @s[tag=gaeacraft.gui_cart.toolmaking.two_heads] run data modify entity @s Items[{Slot:12b}] merge value {tag:{gaeacraft_temp:{gui_dont_dump:1b}}}
#data modify entity @s Items[].Count set value 2
function gaeacraft:gui/dump
# (which would treat the items we've tagged the same as gui_items)
# then clear the tag
data remove entity @s Items[{tag:{gaeacraft_temp:{}}}].tag.gaeacraft_temp


# if outputting & no 15, run :finish
execute if entity @s[tag=gaeacraft.gui_cart.toolmaking.has_output] unless data entity @s Items[{Slot:15b}] as @p[tag=gaeacraft.temp.minecart_gui,limit=1] run function gaeacraft:gui/toolmaking/finish

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



#data modify entity @e[type=armor_stand,tag=gaeacraft.fishing_armor_stand,limit=1] HandItems[0].tag.toolmaking.handle set from entity @s Items[{Slot:19b}]
#data modify entity @e[type=armor_stand,tag=gaeacraft.fishing_armor_stand,limit=1] HandItems[0].tag.toolmaking.binding set from entity @s Items[{Slot:11b}]
#execute as @e[tag=gaeacraft.fishing_armor_stand] run loot replace block 1 0 0 container.0 fish gaeacraft:recipes/toolmaking/enabled_slots ~ ~ ~ mainhand


## Recipes

# stone axe
execute if data entity @s Items[{Slot:3b,id:"minecraft:scute",tag:{CustomModelData:1}}] if data entity @s Items[{Slot:11b,id:"minecraft:feather",tag:{CustomModelData:600}}] if data entity @s Items[{Slot:19b,id:"minecraft:stick"}] run function gaeacraft:gui/toolmaking/output/stone_axe

# stone hoe
execute if data entity @s Items[{Slot:3b,id:"minecraft:scute",tag:{CustomModelData:2}}] if data entity @s Items[{Slot:11b,id:"minecraft:feather",tag:{CustomModelData:600}}] if data entity @s Items[{Slot:19b,id:"minecraft:stick"}] run function gaeacraft:gui/toolmaking/output/stone_hoe

# stone hammer
execute if data entity @s Items[{Slot:3b,id:"minecraft:scute",tag:{CustomModelData:3}}] if data entity @s Items[{Slot:11b,id:"minecraft:feather",tag:{CustomModelData:600}}] if data entity @s Items[{Slot:19b,id:"minecraft:stick"}] run function gaeacraft:gui/toolmaking/output/stone_hammer

# stone shovel
execute if data entity @s Items[{Slot:3b,id:"minecraft:scute",tag:{CustomModelData:4}}] if data entity @s Items[{Slot:11b,id:"minecraft:feather",tag:{CustomModelData:600}}] if data entity @s Items[{Slot:19b,id:"minecraft:stick"}] run function gaeacraft:gui/toolmaking/output/stone_shovel

# stone spear
execute if data entity @s Items[{Slot:3b,id:"minecraft:scute",tag:{CustomModelData:5}}] if data entity @s Items[{Slot:11b,id:"minecraft:feather",tag:{CustomModelData:600}}] if data entity @s Items[{Slot:19b,id:"minecraft:stick"}] run function gaeacraft:gui/toolmaking/output/stone_spear

# stone knife
execute if data entity @s Items[{Slot:3b,id:"minecraft:scute",tag:{CustomModelData:6}}] if data entity @s Items[{Slot:11b,id:"minecraft:feather",tag:{CustomModelData:600}}] if data entity @s Items[{Slot:19b,id:"minecraft:stick"}] run function gaeacraft:gui/toolmaking/output/stone_knife

##End Recipes

#END: if outputting, copy 15 to armorstand data.15
execute if entity @s[tag=gaeacraft.gui_cart.toolmaking.has_output] run data modify entity @e[type=armor_stand,tag=gaeacraft.temp.minecart_gui,limit=1] ArmorItems[3].tag.output set from entity @s Items[{Slot:15b}]
