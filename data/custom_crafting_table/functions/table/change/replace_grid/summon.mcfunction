data remove storage custom_crafting_table:craft Summon
data modify storage custom_crafting_table:craft Summon set from entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] Items

execute if data storage custom_crafting_table:craft Summon[{Slot:22b}] run summon item ~ ~1 ~ {Item:{id:"feather",Count:1b,tag:{CustomModelData:1,display:{Name:'{"translate":"item.gaeacraft.error","italic":false}'}}},Tags:["CCT_summon1","CCT_Summon"]}
execute if data storage custom_crafting_table:craft Summon[{Slot:23b}] run summon item ~ ~1 ~ {Item:{id:"feather",Count:1b,tag:{CustomModelData:1,display:{Name:'{"translate":"item.gaeacraft.error","italic":false}'}}},Tags:["CCT_summon2","CCT_Summon"]}
execute if data storage custom_crafting_table:craft Summon[{Slot:24b}] run summon item ~ ~1 ~ {Item:{id:"feather",Count:1b,tag:{CustomModelData:1,display:{Name:'{"translate":"item.gaeacraft.error","italic":false}'}}},Tags:["CCT_summon3","CCT_Summon"]}
execute if data storage custom_crafting_table:craft Summon[{Slot:25b}] run summon item ~ ~1 ~ {Item:{id:"feather",Count:1b,tag:{CustomModelData:1,display:{Name:'{"translate":"item.gaeacraft.error","italic":false}'}}},Tags:["CCT_summon4","CCT_Summon"]}
execute if data storage custom_crafting_table:craft Summon[{Slot:26b}] run summon item ~ ~1 ~ {Item:{id:"feather",Count:1b,tag:{CustomModelData:1,display:{Name:'{"translate":"item.gaeacraft.error","italic":false}'}}},Tags:["CCT_summon5","CCT_Summon"]}

execute as @e[type=item,tag=CCT_Summon] run function custom_crafting_table:table/change/replace_grid/summon2

tag @e[type=item,tag=CCT_Summon] remove CCT_Summon

