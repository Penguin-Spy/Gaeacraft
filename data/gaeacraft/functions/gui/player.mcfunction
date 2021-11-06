# ran by the player when its minecart_gui changes

# Knapping button
execute store success score $success gaeacraft.count run clear @s #gaeacraft:gui_items{gaeacraft:{knapping_widget:1b}}
execute if score $success gaeacraft.count matches 1 run playsound minecraft:ui.button.click master @s ~ ~ ~

# Toolmaking gui widgets (items in these slots are dumped by fix_widgets, which is always called before this)
clear @s #gaeacraft:gui_items{gaeacraft:{toolmaking_widget:1b}}