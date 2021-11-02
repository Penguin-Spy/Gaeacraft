# detects if there is a recipe in the table
# unless data entity @s Items[{Slot:1b}] unless data entity @s Items[{Slot:2b}] unless data entity @s Items[{Slot:3b}] unless data entity @s Items[{Slot:10b}] unless data entity @s Items[{Slot:11b}] unless data entity @s Items[{Slot:12b}] unless data entity @s Items[{Slot:19b}] unless data entity @s Items[{Slot:20b}] unless data entity @s Items[{Slot:21b}]

execute store success score $success gaeacraft.count run data remove entity @s Items[{Slot:15b}]
execute if entity @s[tag=gaeacraft.gui_cart.toolmaking.has_output] if score $success gaeacraft.count matches 0 at @s as @a[tag=gaeacraft.player.gui_available.toolmaking] if score @s gaeacraft.player = @e[type=chest_minecart,tag=gaeacraft.gui_cart.toolmaking.has_output,sort=nearest,limit=1] gaeacraft.player run function gaeacraft:gui/toolmaking/finish

tag @s remove gaeacraft.gui_cart.toolmaking.has_output


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