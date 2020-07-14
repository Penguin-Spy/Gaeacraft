#gaeacraft:hud/thirst.mcfunction
#loop for generating the player's thirst section of their hud.
#called once to start creating display, returns full display in 0 0 0's Text1 & Text2
#E00A - E00E: thirst

#Determine the character, and prepend it to previous text
execute if score $temp gc_count matches 4.. run data modify storage gaeacraft:hud thirst prepend value '{"text":"\\uE00A\\uF802"}'
execute if score $temp gc_count matches 3 run data modify storage gaeacraft:hud thirst prepend value '{"text":"\\uE00B\\uF802"}'
execute if score $temp gc_count matches 2 run data modify storage gaeacraft:hud thirst prepend value '{"text":"\\uE00C\\uF802"}'
execute if score $temp gc_count matches 1 run data modify storage gaeacraft:hud thirst prepend value '{"text":"\\uE00D\\uF802"}'
execute if score $temp gc_count matches ..0 run data modify storage gaeacraft:hud thirst prepend value '{"text":"\\uE00E\\uF802"}'

#sub 4 from both temps
scoreboard players remove $maxTemp gc_count 4
scoreboard players remove $temp gc_count 4

#loop if there are more characters necessary
execute if score $maxTemp gc_count matches 1.. run function gaeacraft:hud/thirst