# Converted with Data Modify Updater | Created by PixiGeko #
execute align xyz run kill @e[type=item,tag=!global.ignore,tag=!global.ignore.kill,dx=0,dy=0,dz=0,nbt={Age:0s}]

data remove block 1 0 0 Items

data modify block 1 0 0 Items set from entity @s ArmorItems[3].tag.Items
data remove block 1 0 0 Items[{Slot:15b}]
data remove block 1 0 0 Items[{tag:{CCT_GUI_Clear:1}}]

data remove block 1 0 0 Items[{tag:{CCT_fill:1}}]
data remove block 1 0 0 Items[{tag:{CCT_NoTag:1}}].tag
data remove block 1 0 0 Items[].tag.CCT_NoStack


#replaceitem block 1 0 0 container.0 zombie_villager_spawn_egg{CustomModelData:30000,display:{Name:'{"text":"Custom Crafting Table","color":"white","italic":false}'},EntityTag:{id:"minecraft:area_effect_cloud",Duration:1,Particle:"none",ReapplicationDelay:0,Radius:0f,RadiusOnUse:0f,WaitTime:0,Tags:["CCT_Place","global.ignore","global.ignore.kill","global.ignore.pos"]}}

execute align xyz run loot spawn ~0.5 ~0.4 ~0.5 mine 1 0 0 air{drop_contents:1b}
execute align xyz run loot spawn ~0.5 ~0.4 ~0.5 loot gaeacraft:blocks/machines/autocrafter

kill @s[type=!player]

