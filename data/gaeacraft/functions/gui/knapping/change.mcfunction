# clear clicked buttons
execute as @p[tag=gaeacraft.temp.knapping,limit=1] run function gaeacraft:gui/knapping/player
# check for valid recipe
execute as @e[type=chest_minecart,tag=gaeacraft.temp.knapping,limit=1] run function gaeacraft:gui/knapping/detect
# remove any dropped button items
kill @e[type=item,nbt={Item:{id:"minecraft:feather",tag:{CustomModelData:10}}}]