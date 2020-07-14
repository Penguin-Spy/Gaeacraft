#gaeacraft:hud/energy.mcfunction
#loop for generating the player's energy section of their hud.
#called once to start creating display, returns full display in 0 0 0's Text1 & Text2
#E015 - E019: energy

#Determine the character, and prepend it to previous text
execute if score $temp gc_count matches 4.. run data modify storage gaeacraft:hud energy prepend value '{"text":"\\uE015\\uF802"}'
execute if score $temp gc_count matches 3 run data modify storage gaeacraft:hud energy prepend value '{"text":"\\uE016\\uF802"}'
execute if score $temp gc_count matches 2 run data modify storage gaeacraft:hud energy prepend value '{"text":"\\uE017\\uF802"}'
execute if score $temp gc_count matches 1 run data modify storage gaeacraft:hud energy prepend value '{"text":"\\uE018\\uF802"}'
execute if score $temp gc_count matches ..0 run data modify storage gaeacraft:hud energy prepend value '{"text":"\\uE019\\uF802"}'

#sub 4 from both temps
scoreboard players remove $maxTemp gc_count 4
scoreboard players remove $temp gc_count 4

#loop if there are more characters necessary
execute if score $maxTemp gc_count matches 1.. run function gaeacraft:hud/energy