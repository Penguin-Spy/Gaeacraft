# ran by the player when its minecart_gui changes

# Knapping button
execute store success score $success gaeacraft.count run clear @s #gaeacraft:gui_items{gaeacraft:{knapping_widget:1b}}
execute if score $success gaeacraft.count matches 1 run playsound minecraft:ui.button.click master @s ~ ~ ~

# Toolmaking gui widgets (placeholder handle & slot cover)
execute store success score $success gaeacraft.count run clear @s #gaeacraft:gui_items{gaeacraft:{toolmaking_widget:1b}}
execute if score $success gaeacraft.count matches 1 as @e[type=chest_minecart,tag=gaeacraft.temp.minecart_gui,limit=1] run function gaeacraft:gui/toolmaking/fix_widgets