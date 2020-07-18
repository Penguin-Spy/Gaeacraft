#gaeacraft:hud/hunger.mcfunction
#loop for generating the player's hunger section of their hud.
#called once to start creating display, returns full display in 0 0 0's Text1 & Text2
#E005 - E009: hunger

#Determine the character, and prepend it to previous text
execute if score $temp gaeacraft.count matches 4.. run data modify storage gaeacraft:hud hunger prepend value '{"text":"\\uE005\\uF802"}'
execute if score $temp gaeacraft.count matches 3 run data modify storage gaeacraft:hud hunger prepend value '{"text":"\\uE006\\uF802"}'
execute if score $temp gaeacraft.count matches 2 run data modify storage gaeacraft:hud hunger prepend value '{"text":"\\uE007\\uF802"}'
execute if score $temp gaeacraft.count matches 1 run data modify storage gaeacraft:hud hunger prepend value '{"text":"\\uE008\\uF802"}'
execute if score $temp gaeacraft.count matches ..0 run data modify storage gaeacraft:hud hunger prepend value '{"text":"\\uE009\\uF802"}'

#sub 4 from both temps
scoreboard players remove $maxTemp gaeacraft.count 4
scoreboard players remove $temp gaeacraft.count 4

#loop if there are more characters necessary
execute if score $maxTemp gaeacraft.count matches 1.. run function gaeacraft:hud/hunger