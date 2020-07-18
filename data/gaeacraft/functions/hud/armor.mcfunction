#gaeacraft:hud/armor.mcfunction
#loop for generating the player's armor section of their hud.
#called once to start creating display, returns full display in 0 0 0's Text1 & Text2
#E000 - E004: heart

#Determine the character, and append it to previous text
execute if score $temp gaeacraft.count matches 4.. run data modify storage gaeacraft:hud armor append value '{"text":"\\uE01F\\uF802"}'
execute if score $temp gaeacraft.count matches 3 run data modify storage gaeacraft:hud armor append value '{"text":"\\uE020\\uF802"}'
execute if score $temp gaeacraft.count matches 2 run data modify storage gaeacraft:hud armor append value '{"text":"\\uE021\\uF802"}'
execute if score $temp gaeacraft.count matches 1 run data modify storage gaeacraft:hud armor append value '{"text":"\\uE022\\uF802"}'
execute if score $temp gaeacraft.count matches ..0 run data modify storage gaeacraft:hud armor append value '{"text":"\\uE023\\uF802"}'

#sub 4 from both temps
scoreboard players remove $maxTemp gaeacraft.count 4
scoreboard players remove $temp gaeacraft.count 4

#loop if there are more characters necessary
execute if score $maxTemp gaeacraft.count matches 1.. run function gaeacraft:hud/armor