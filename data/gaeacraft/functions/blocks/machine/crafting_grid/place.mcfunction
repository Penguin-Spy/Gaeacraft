execute align xyz positioned ~.5 ~-.6369 ~.5 if entity @e[type=minecraft:armor_stand,tag=gaeacraft.cct.cart,distance=0...1] run loot spawn ~ ~.5 ~ loot gaeacraft:blocks/machines/crafting_grid
execute align xyz positioned ~.5 ~-.6369 ~.5 unless entity @e[type=minecraft:armor_stand,tag=gaeacraft.cct.cart,distance=0...1] run summon minecraft:armor_stand ~ ~ ~ {Fire:32670s,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["Custom_Crafting_Table","gaeacraft.cct.cart"],Passengers:[{id:"minecraft:chest_minecart",CustomDisplayTile:1b,Tags:["gaeacraft.invisible_minecart","gaeacraft.cct.chest_minecart"],CustomName:'[{"translate":"space.-8"},{"text":"\\uE000","font":"gaeacraft:gui","color":"white"},{"translate":"space.-249"},{"translate":"container.crafting","color":"#3F3F3F"}]',DisplayState:{Name:"minecraft:air"}}],HandItems:[{id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"item.gaeacraft.error","italic":false}'},CustomModelData:2}},{}],ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:'{"translate":"item.gaeacraft.error"}'},CustomModelData:1}}]}
setblock ~ ~ ~ minecraft:air