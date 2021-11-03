# dump_output:
#   copy Items to box
#   clear Items.15
#
#   delete feathers
#   loot give player

data modify block 1 0 0 Items set from entity @s Items

# reset minecart inventory to only gui items
data remove entity @s Items[{Slot:15b}]

# give player all remaining items (only ever output slot)
data remove block 1 0 0 Items[{tag:{gaeacraft:{gui_item:1b}}}]
execute if data block 1 0 0 Items run loot give @p[tag=gaeacraft.temp.minecart_gui,limit=1] mine 1 0 0 air{drop_contents:1b}