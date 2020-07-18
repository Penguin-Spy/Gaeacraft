#does all the things!
#well, not all the things, but the things that need to happen constantly



#Player hud updating
execute as @a run function gaeacraft:hud/main




#Set display tile of normal minecarts
execute as @e[type=#gaeacraft:minecarts,tag=!gc_invis_minecart] run function gaeacraft:gui/invisible_minecarts

#detect and replace ghast_spawn_eggs with a armorstand to spawn a crafting grid.
execute as @a[nbt={Inventory:[{id:"minecraft:ghast_spawn_egg"}]}] run loot give @s loot gaeacraft:blocks/crafting_grid
execute as @a[nbt={Inventory:[{id:"minecraft:ghast_spawn_egg"}]}] run clear @s minecraft:ghast_spawn_egg 1

#replace the gc_summon-crafting_grid armorstand with a real crafting_grid (chest_minecart riding armorstand)
execute as @e[type=minecraft:armor_stand,tag=gc_summon-crafting_grid] at @s run summon minecraft:armor_stand ~ ~-1.777 ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["crafting_grid"],Passengers:[{id:"minecraft:chest_minecart",CustomDisplayTile:1b,Tags:["gc_invis_minecart","crafting_grid"],CustomName:'{"translate":"container.crafting","italic":false}',DisplayState:{Name:"minecraft:air"},Items:[{Slot:0b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:10}},{Slot:4b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:5b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:6b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:7b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:8b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:9b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:13b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:14b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:16b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:17b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:18b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:22b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:23b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:24b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:25b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:26b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}}]}],ArmorItems:[{},{},{},{id:"minecraft:feather",Count:1b,tag:{display:{Lore:['{"translate":"gaeacraft.item.error"}']},CustomModelData:1000003}}]}
kill @e[type=minecraft:armor_stand,tag=gc_summon-crafting_grid]

#kill crafting_grid armorstand if minecart dissapears
execute as @e[type=minecraft:armor_stand,tag=crafting_grid] at @s positioned ~ ~.75 ~ unless entity @e[type=minecraft:chest_minecart,tag=crafting_grid,distance=0...75] run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:feather",tag:{CustomModelData:1000001}}}]
execute as @e[type=minecraft:armor_stand,tag=crafting_grid] at @s positioned ~ ~.75 ~ unless entity @e[type=minecraft:chest_minecart,tag=crafting_grid,distance=0...75] run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:feather",tag:{CustomModelData:2}}}]
execute as @e[type=minecraft:armor_stand,tag=crafting_grid] at @s positioned ~ ~.75 ~ unless entity @e[type=minecraft:chest_minecart,tag=crafting_grid,distance=0...75] run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:minecart",Count:1b}},distance=0..2]
execute as @e[type=minecraft:armor_stand,tag=crafting_grid] at @s positioned ~ ~.75 ~ unless entity @e[type=minecraft:chest_minecart,tag=crafting_grid,distance=0...75] run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:chest",Count:1b}},distance=0..2]
execute as @e[type=minecraft:armor_stand,tag=crafting_grid] at @s positioned ~ ~.75 ~ unless entity @e[type=minecraft:chest_minecart,tag=crafting_grid,distance=0...75] run loot spawn ~ ~1.777 ~ loot gaeacraft:blocks/crafting_grid
execute as @e[type=minecraft:armor_stand,tag=crafting_grid] at @s positioned ~ ~.75 ~ unless entity @e[type=minecraft:chest_minecart,tag=crafting_grid,distance=0...75] run kill @s


scoreboard players set @a gaeacraft.count 0
#test for if a player is holding a crafting_grid gui feather item. MUST RUN FUNCTION AT PLAYER WHO's ITEM WAS CLEARED
execute as @a store result score @s gaeacraft.count run clear @s minecraft:feather{CustomModelData:1000001}
execute as @a[scores={gaeacraft.count=1..}] at @s as @e[type=minecraft:chest_minecart,tag=crafting_grid,distance=0..10] run function gaeacraft:gui/crafting/reset_gui
#test for if a player is holding an 'empty' feather item.
execute as @a store result score @s gaeacraft.count run clear @s minecraft:feather{CustomModelData:2}
execute as @a[scores={gaeacraft.count=1..}] at @s as @e[type=minecraft:chest_minecart,tag=crafting_grid,distance=0..10] run function gaeacraft:gui/crafting/reset_gui
execute as @a[scores={gaeacraft.count=1..}] at @s as @e[type=minecraft:chest_minecart,tag=knapping,distance=0..10] run function gaeacraft:gui/knapping/reset_gui
#test for if a player is holding a knapping gui feather item.
execute as @a store result score @s gaeacraft.count run clear @s minecraft:feather{CustomModelData:1000007}
execute as @a[scores={gaeacraft.count=1..}] at @s as @e[type=minecraft:chest_minecart,tag=knapping,distance=0..10] run function gaeacraft:gui/knapping/reset_gui
#test for if a player is holding a knapping button feather item.
#execute as @a store result score @s gaeacraft.count run clear @s minecraft:feather{CustomModelData:1000008}
execute as @a[scores={gaeacraft.count=1..}] run playsound minecraft:ui.button.click master @s



# Custom crafting
#execute at @a as @e[type=minecraft:chest_minecart,tag=crafting_grid,distance=0..10] run function gaeacraft:gui/crafting/detect


# Knapping
execute as @a[nbt={SelectedItem:{id:"minecraft:feather",tag:{CustomModelData:1000004}},Inventory:[{Slot:-106b,id:"minecraft:feather",Count:1b,tag:{CustomModelData:1000004}}]},tag=!knapping] at @s run summon chest_minecart ~ ~1.25 ~ {Invulnerable:1b,CustomDisplayTile:1b,Tags:["gc_invis_minecart","knapping"],CustomName:'{"translate":"container.knapping"}',DisplayState:{Name:"minecraft:air"},Items:[{Slot:0b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:1000007}},{Slot:1b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:1000008}},{Slot:2b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:1000008}},{Slot:3b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:1000008}},{Slot:4b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:5b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:6b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:7b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:8b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:9b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:10b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:1000008}},{Slot:11b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:1000008}},{Slot:12b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:1000008}},{Slot:13b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:14b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:16b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:17b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:18b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:19b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:1000008}},{Slot:20b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:1000008}},{Slot:21b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:1000008}},{Slot:22b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:23b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:24b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:25b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:26b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}}]}
execute as @a[nbt=!{SelectedItem:{id:"minecraft:feather",tag:{CustomModelData:1000004}},Inventory:[{Slot:-106b,id:"minecraft:feather",Count:1b,tag:{CustomModelData:1000004}}]},tag=knapping] at @s run tp @e[type=minecraft:chest_minecart,tag=knapping,sort=nearest,limit=1] ~ -64 ~
execute as @a[nbt=!{SelectedItem:{id:"minecraft:feather",tag:{CustomModelData:1000004}},Inventory:[{Slot:-106b,id:"minecraft:feather",Count:1b,tag:{CustomModelData:1000004}}]}] run tag @s remove knapping
execute as @a[nbt={SelectedItem:{id:"minecraft:feather",tag:{CustomModelData:1000004}},Inventory:[{Slot:-106b,id:"minecraft:feather",Count:1b,tag:{CustomModelData:1000004}}]}] run tag @s add knapping
execute as @a[tag=knapping] at @s run tp @e[type=minecraft:chest_minecart,tag=knapping,sort=nearest,limit=1] ~ ~1.25 ~
execute at @a as @e[type=minecraft:chest_minecart,tag=knapping,distance=0..10] run function gaeacraft:gui/knapping/detect

scoreboard players set @a gaeacraft.sneakT 0


schedule function gaeacraft:tick 1t