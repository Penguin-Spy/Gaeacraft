#does all the things!
#well, not all the things, but the things that need to happen constantly



#Player hud updating
execute as @a[gamemode=!creative] run function gaeacraft:hud/main
#Player trinket menu updating - unused, but left in incase i want to revisit it. currently too buggy and annoying to be used
#execute as @a[nbt={recipeBook:{isGuiOpen:1b}}] run function gaeacraft:gui/trinket/main

#prevent shift+clicking of helmets (and player heads, like the custom blocks)
#this does not fix the fact that you can still place them on manually, with a stack of one, but it makes inventory management much less annoying.
execute as @a unless data entity @s Inventory[{Slot:103b,id:"minecraft:feather"}] run clear @s minecraft:feather{CustomModelData:3}
execute as @a unless data entity @s Inventory[{Slot:103b}] run item entity @s armor.head replace minecraft:feather{CustomModelData:3,display:{Name:'{"translate":"empty"}'}}

#Set display tile of normal minecarts
execute as @e[type=#gaeacraft:minecarts,tag=!gaeacraft.invisible_minecart] run function gaeacraft:gui/invisible_minecarts

scoreboard players set @a gaeacraft.count 0
#detect and replace ghast_spawn_eggs with a armorstand to spawn a crafting grid.
execute as @a store result score @s gaeacraft.count run clear @s minecraft:ghast_spawn_egg 1
execute as @a[scores={gaeacraft.count=1..}] run loot give @s loot gaeacraft:blocks/machines/crafting_grid

#kill crafting_grid armorstand if minecart dissapears
execute as @e[type=minecraft:armor_stand,tag=gaeacraft.cct.cart] at @s if block ~ ~ ~ #gaeacraft:air run function gaeacraft:blocks/machine/crafting_grid/remove
execute as @e[type=minecraft:armor_stand,tag=gaeacraft.cct.cart] at @s unless block ~ ~1 ~ #gaeacraft:air run function gaeacraft:blocks/machine/crafting_grid/remove
execute as @e[type=minecraft:armor_stand,tag=gaeacraft.cct.cart] at @s unless entity @e[type=minecraft:chest_minecart,tag=gaeacraft.cct.chest_minecart,distance=0...75] run function gaeacraft:blocks/machine/crafting_grid/remove

execute as @e[type=armor_stand,tag=gaeacraft.block.ore] at @s unless block ~ ~ ~ black_stained_glass run function gaeacraft:blocks/geo_res/remove
execute as @e[type=armor_stand,tag=gaeacraft.block.ore_block] at @s unless block ~ ~ ~ black_stained_glass run function gaeacraft:blocks/geo_res/remove

##test for if a player is holding a crafting_grid gui feather item. MUST RUN FUNCTION AT PLAYER WHO's ITEM WAS CLEARED
#execute as @a store result score @s gaeacraft.count run clear @s minecraft:feather{CustomModelData:1000001}
#execute as @a[scores={gaeacraft.count=1..}] at @s as @e[type=minecraft:chest_minecart,tag=crafting_grid,distance=0..10] run function gaeacraft:gui/crafting/reset_gui
##test for if a player is holding an 'empty' feather item.
#execute as @a store result score @s gaeacraft.count run clear @s minecraft:feather{CustomModelData:2}
#execute as @a[scores={gaeacraft.count=1..}] at @s as @e[type=minecraft:chest_minecart,tag=crafting_grid,distance=0..10] run function gaeacraft:gui/crafting/reset_gui
#execute as @a[scores={gaeacraft.count=1..}] at @s as @e[type=minecraft:chest_minecart,tag=knapping,distance=0..10] run function gaeacraft:gui/knapping/reset_gui
##test for if a player is holding a knapping gui feather item.
#execute as @a store result score @s gaeacraft.count run clear @s minecraft:feather{CustomModelData:1000007}
#execute as @a[scores={gaeacraft.count=1..}] at @s as @e[type=minecraft:chest_minecart,tag=knapping,distance=0..10] run function gaeacraft:gui/knapping/reset_gui
##test for if a player is holding a knapping button feather item.
##execute as @a store result score @s gaeacraft.count run clear @s minecraft:feather{CustomModelData:1000008}
#execute as @a[scores={gaeacraft.count=1..}] run playsound minecraft:ui.button.click master @s



# Custom crafting
#execute at @a as @e[type=minecraft:chest_minecart,tag=crafting_grid,distance=0..10] run function gaeacraft:gui/crafting/detect


# Knapping
#execute as @a[nbt={SelectedItem:{id:"minecraft:feather",tag:{CustomModelData:1000004}},Inventory:[{Slot:-106b,id:"minecraft:feather",Count:1b,tag:{CustomModelData:1000004}}]},tag=!knapping] at @s run summon chest_minecart ~ ~1.25 ~ {Invulnerable:1b,CustomDisplayTile:1b,Tags:["gaeacraft.invisible_minecart","knapping"],CustomName:'{"translate":"container.knapping"}',DisplayState:{Name:"minecraft:air"},Items:[{Slot:0b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:1000007}},{Slot:1b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:1000008}},{Slot:2b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:1000008}},{Slot:3b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:1000008}},{Slot:4b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:5b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:6b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:7b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:8b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:9b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:10b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:1000008}},{Slot:11b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:1000008}},{Slot:12b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:1000008}},{Slot:13b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:14b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:16b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:17b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:18b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:19b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:1000008}},{Slot:20b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:1000008}},{Slot:21b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"container.knapping.button","italic":false}'},CustomModelData:1000008}},{Slot:22b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:23b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:24b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:25b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}},{Slot:26b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"translate":"empty","italic":false}'},CustomModelData:2}}]}
#execute as @a[nbt=!{SelectedItem:{id:"minecraft:feather",tag:{CustomModelData:1000004}},Inventory:[{Slot:-106b,id:"minecraft:feather",Count:1b,tag:{CustomModelData:1000004}}]},tag=knapping] at @s run tp @e[type=minecraft:chest_minecart,tag=knapping,sort=nearest,limit=1] ~ -64 ~
#execute as @a[nbt=!{SelectedItem:{id:"minecraft:feather",tag:{CustomModelData:1000004}},Inventory:[{Slot:-106b,id:"minecraft:feather",Count:1b,tag:{CustomModelData:1000004}}]}] run tag @s remove knapping
#execute as @a[nbt={SelectedItem:{id:"minecraft:feather",tag:{CustomModelData:1000004}},Inventory:[{Slot:-106b,id:"minecraft:feather",Count:1b,tag:{CustomModelData:1000004}}]}] run tag @s add knapping
#execute as @a[tag=knapping] at @s run tp @e[type=minecraft:chest_minecart,tag=knapping,sort=nearest,limit=1] ~ ~1.25 ~
#execute at @a as @e[type=minecraft:chest_minecart,tag=knapping,distance=0..10] run function gaeacraft:gui/knapping/detect

scoreboard players set @a gaeacraft.sneakT 0

function custom_crafting_table:main

schedule function gaeacraft:tick 1t