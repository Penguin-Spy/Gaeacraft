# dump:
#   copy Items to box
#   clear Items
#   copy feathers back
#   copy 15 back
#
#   delete feathers
#   delete 15
#   loot give player

data modify block 1 0 0 Items set from entity @s Items

# reset minecart inventory to only gui items
data remove entity @s Items
data modify entity @s Items append from block 1 0 0 Items[{tag:{gaeacraft:{gui_item:1b}}}]
data modify entity @s Items append from block 1 0 0 Items[{Slot:15b}]

# give player all remaining non-gui items
data remove block 1 0 0 Items[{tag:{gaeacraft:{gui_item:1b}}}]
data remove block 1 0 0 Items[{Slot:15b}]
execute if data block 1 0 0 Items run loot give @p[tag=gaeacraft.temp.minecart_gui,limit=1] mine 1 0 0 air{drop_contents:1b}

# update the armorstand's copy of the inventory that's used for detecting changes
data modify entity @e[type=armor_stand,tag=gaeacraft.temp.minecart_gui,limit=1] ArmorItems[3].tag.Items set from entity @s Items