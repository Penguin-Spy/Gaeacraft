# ran by the player when its knapping gui changes
execute store success score $success gaeacraft.count run clear @s feather{CustomModelData:10}
execute if score $success gaeacraft.count matches 1 run playsound minecraft:ui.button.click master @s ~ ~ ~