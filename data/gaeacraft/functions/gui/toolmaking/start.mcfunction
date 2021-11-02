# summons the minecart & armorstand, copies playerID scores, & sets up tags

execute at @s run summon armor_stand ~ ~1.25 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["gaeacraft.gui_cart.toolmaking","gaeacraft.just_summoned"],Passengers:[{id:"minecraft:chest_minecart",NoGravity:1b,Invulnerable:1b,CustomNameVisible:0b,CustomDisplayTile:1b,Tags:["gaeacraft.invisible_minecart","gaeacraft.gui_cart.toolmaking","gaeacraft.just_summoned"],CustomName:'[{"translate":"space.-8"},{"text":"\\uE003","font":"gaeacraft:gui","color":"white"},{"translate":"space.-249"},{"translate":"container.toolmaking","color":"#3F3F3F"}]',DisplayState:{Name:"minecraft:air"},Items:[{Slot:26b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:10}},{Slot:19b,id:"minecraft:stick",Count:1b,tag:{display:{Name:'{"translate":"item.gaeacraft.tool_part.wooden_handle","italic":false}'},CustomModelData:10}}]}],ArmorItems:[{},{},{},{id:"minecraft:feather",Count:1b,tag:{CustomModelData:2,Items:[]}}]}

scoreboard players operation @e[tag=gaeacraft.just_summoned] gaeacraft.player = @s gaeacraft.player
tag @e[tag=gaeacraft.just_summoned] remove gaeacraft.just_summoned

tag @s add gaeacraft.player.gui_available.toolmaking