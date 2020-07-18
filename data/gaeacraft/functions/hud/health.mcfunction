#gaeacraft:hud/health.mcfunction
#loop for generating the player's health section of their hud.
#called once to start creating display, returns full display in 0 0 0's Text1 & Text2
#E000 - E004: heart

#Determine the character, and append it to previous text
execute if score $temp gaeacraft.count matches 4.. run data modify storage gaeacraft:hud health append value '{"text":"\\uE000\\uF802"}'
execute if score $temp gaeacraft.count matches 3 run data modify storage gaeacraft:hud health append value '{"text":"\\uE001\\uF802"}'
execute if score $temp gaeacraft.count matches 2 run data modify storage gaeacraft:hud health append value '{"text":"\\uE002\\uF802"}'
execute if score $temp gaeacraft.count matches 1 run data modify storage gaeacraft:hud health append value '{"text":"\\uE003\\uF802"}'
execute if score $temp gaeacraft.count matches ..0 run data modify storage gaeacraft:hud health append value '{"text":"\\uE004\\uF802"}'

#sub 4 from both temps
scoreboard players remove $maxTemp gaeacraft.count 4
scoreboard players remove $temp gaeacraft.count 4

#loop if there are more characters necessary
execute if score $maxTemp gaeacraft.count matches 1.. run function gaeacraft:hud/health