#execute store success score Success CustomCraftingT if block 16942001 1 -14269007 yellow_shulker_box
#execute if score Success CustomCraftingT matches 0 run function custom_crafting_table:load

#execute unless block ~ ~ ~ #custom_crafting_table:place if block ~ ~1 ~ #custom_crafting_table:place run tp @s ~ ~1 ~
#execute unless block ~ ~ ~ #custom_crafting_table:place run summon item ~ ~ ~ {Item:{id:"zombie_villager_spawn_egg",Count:1b,tag:{CustomModelData:30000,display:{Name:'{"text":"Custom Crafting Table","color":"white","italic":false}'},EntityTag:{id:"minecraft:area_effect_cloud",Duration:1,Particle:"none",ReapplicationDelay:0,Radius:0f,RadiusOnUse:0f,WaitTime:0,Tags:["CCT_Place","global.ignore","global.ignore.kill","global.ignore.pos"]}}}}

execute align xyz run summon minecraft:armor_stand ~0.5 ~ ~0.5 {Small:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1b,Fire:32670s,DisabledSlots:2039583,HandItems:[{id:"minecraft:feather",Count:1b,tag:{CustomModelData:2}},{}],ArmorItems:[{},{},{},{id:"armor_stand",Count:1b,tag:{CustomModelData:2}}],Tags:["Custom_Crafting_Table","Fire","global.ignore","global.ignore.kill","global.ignore.pos"]}

execute run setblock ~ ~ ~ barrel[facing=up]{CustomName:'[{"translate":"space.-8"},{"text":"\\uE001","color":"white","font":"gaeacraft:gui"},{"translate":"space.-249"},{"translate":"container.crafting","color":"#3F3F3F"}]'}

#kill @s
#playsound minecraft:block.wood.place ambient @a[tag=!global.ignore,tag=!global.ignore.gui,distance=..7] ~ ~ ~ 1
