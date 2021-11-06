execute if predicate gaeacraft:gui_available/knapping_stone run execute at @s run summon armor_stand ~ ~1.25 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["gaeacraft.gui_cart","gaeacraft.gui_cart.knapping","gaeacraft.just_summoned"],Passengers:[{id:"minecraft:chest_minecart",NoGravity:1b,Invulnerable:1b,CustomNameVisible:0b,CustomDisplayTile:1b,Tags:["gaeacraft.invisible_minecart","gaeacraft.gui_cart","gaeacraft.gui_cart.knapping","gaeacraft.gui_cart.knapping.stone","gaeacraft.just_summoned"],CustomName:'[{"translate":"space.-8"},{"text":"\\uE000","font":"gaeacraft:gui","color":"white"},{"translate":"space.-249"},{"translate":"container.knapping","color":"#3F3F3F"}]',DisplayState:{Name:"minecraft:air"},Items:[{Slot:1b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:15,gaeacraft:{gui_item:1b,knapping_widget:1b}}},{Slot:2b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:15,gaeacraft:{gui_item:1b,knapping_widget:1b}}},{Slot:3b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:15,gaeacraft:{gui_item:1b,knapping_widget:1b}}},{Slot:10b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:15,gaeacraft:{gui_item:1b,knapping_widget:1b}}},{Slot:11b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:15,gaeacraft:{gui_item:1b,knapping_widget:1b}}},{Slot:12b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:15,gaeacraft:{gui_item:1b,knapping_widget:1b}}},{Slot:19b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:15,gaeacraft:{gui_item:1b,knapping_widget:1b}}},{Slot:20b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:15,gaeacraft:{gui_item:1b,knapping_widget:1b}}},{Slot:21b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:15,gaeacraft:{gui_item:1b,knapping_widget:1b}}}]}],ArmorItems:[{},{},{},{id:"minecraft:feather",Count:1b,tag:{CustomModelData:2,Items:[]}}]}

execute if predicate gaeacraft:gui_available/knapping_clay run execute at @s run summon armor_stand ~ ~1.25 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["gaeacraft.gui_cart","gaeacraft.gui_cart.knapping","gaeacraft.just_summoned"],Passengers:[{id:"minecraft:chest_minecart",NoGravity:1b,Invulnerable:1b,CustomNameVisible:0b,CustomDisplayTile:1b,Tags:["gaeacraft.invisible_minecart","gaeacraft.gui_cart","gaeacraft.gui_cart.knapping","gaeacraft.gui_cart.knapping.clay","gaeacraft.just_summoned"],CustomName:'[{"translate":"space.-8"},{"text":"\\uE001","font":"gaeacraft:gui","color":"white"},{"translate":"space.-249"},{"translate":"container.knapping","color":"#3F3F3F"}]',DisplayState:{Name:"minecraft:air"},Items:[{Slot:1b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:16,gaeacraft:{gui_item:1b,knapping_widget:1b}}},{Slot:2b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:16,gaeacraft:{gui_item:1b,knapping_widget:1b}}},{Slot:3b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:16,gaeacraft:{gui_item:1b,knapping_widget:1b}}},{Slot:10b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:16,gaeacraft:{gui_item:1b,knapping_widget:1b}}},{Slot:11b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:16,gaeacraft:{gui_item:1b,knapping_widget:1b}}},{Slot:12b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:16,gaeacraft:{gui_item:1b,knapping_widget:1b}}},{Slot:19b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:16,gaeacraft:{gui_item:1b,knapping_widget:1b}}},{Slot:20b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:16,gaeacraft:{gui_item:1b,knapping_widget:1b}}},{Slot:21b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:16,gaeacraft:{gui_item:1b,knapping_widget:1b}}}]}],ArmorItems:[{},{},{},{id:"minecraft:feather",Count:1b,tag:{CustomModelData:2,Items:[]}}]}

execute if predicate gaeacraft:gui_available/knapping_stone run tag @s add gaeacraft.player.gui_available.knapping.stone
execute if predicate gaeacraft:gui_available/knapping_clay run tag @s add gaeacraft.player.gui_available.knapping.clay