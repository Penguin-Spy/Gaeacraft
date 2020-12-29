#execute store success score Success CustomCraftingT if block 16942001 1 -14269007 yellow_shulker_box
#execute if score Success CustomCraftingT matches 0 run function custom_crafting_table:load

item block 1 0 0 container.0 replace zombie_villager_spawn_egg{CustomModelData:30000,display:{Name:'{"text":"Custom Crafting Table","color":"white","italic":false}'},EntityTag:{id:"minecraft:area_effect_cloud",Duration:1,Particle:"none",ReapplicationDelay:0,Radius:0f,RadiusOnUse:0f,WaitTime:0,Tags:["CCT_Place","global.ignore","global.ignore.kill","global.ignore.pos"]}}

data modify block 1 0 0 Items[0].Count set from entity @s SelectedItem.Count

loot replace entity @s weapon 1 mine 1 0 0 air{drop_contents:1b}
