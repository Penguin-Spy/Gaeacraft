#aaaaaaaaaaaaa
#eventually when this code gets reused for the tool table, this will need a conditional. we're ignoring that right now :)
data modify entity @s Items append value {Slot:19b,id:"minecraft:stick",Count:1b,tag:{display:{Name:'{"translate":"item.gaeacraft.tool_part.wooden_handle","italic":false}'},CustomModelData:10,gaeacraft:{gui_item:1b,toolmaking_widget:1b}}}

execute as @s[tag=gaeacraft.gui_cart.toolmaking.handle] run data modify entity @s Items append value {Slot:22b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:11,gaeacraft:{gui_item:1b,toolmaking_widget:1b}}}
execute as @s[tag=gaeacraft.gui_cart.toolmaking.binding] run data modify entity @s Items append value {Slot:22b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:12,gaeacraft:{gui_item:1b,toolmaking_widget:1b}}}
execute as @s[tag=gaeacraft.gui_cart.toolmaking.one_head] run data modify entity @s Items append value {Slot:22b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:13,gaeacraft:{gui_item:1b,toolmaking_widget:1b}}}
execute as @s[tag=gaeacraft.gui_cart.toolmaking.two_heads] run data modify entity @s Items append value {Slot:22b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:14,gaeacraft:{gui_item:1b,toolmaking_widget:1b}}}


# update the armorstand's copy of the inventory that's used for detecting changes
data modify entity @e[type=armor_stand,tag=gaeacraft.temp.minecart_gui,limit=1] ArmorItems[3].tag.Items set from entity @s Items