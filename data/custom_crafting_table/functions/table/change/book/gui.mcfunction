data modify storage custom_crafting_table:craft Items prepend from storage custom_crafting_table:craft Items[{Slot:8b}].tag.CCT_GUI_Item[]
kill @e[type=item,distance=..10,nbt={Item:{tag:{CCT_GUI_Item:1}}}]
tag @s add CCT_Auto_Craft_Enabled

