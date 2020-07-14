#gaeacraft:hud/aura.mcfunction
#loop for generating the player's aura section of their hud.
#called once to start creating display, returns full display in 0 0 0's Text1 & Text2
#E00F - E014: aura

#Determine the character, and prepend it to previous text
execute if score $temp gc_count matches 4.. run data modify storage gaeacraft:hud aura prepend value '{"text":"\\uE00F\\uF802"}'
execute if score $temp gc_count matches 3 run data modify storage gaeacraft:hud aura prepend value '{"text":"\\uE010\\uF802"}'
execute if score $temp gc_count matches 2 run data modify storage gaeacraft:hud aura prepend value '{"text":"\\uE011\\uF802"}'
execute if score $temp gc_count matches 1 run data modify storage gaeacraft:hud aura prepend value '{"text":"\\uE012\\uF802"}'
execute if score $temp gc_count matches ..0 run data modify storage gaeacraft:hud aura prepend value '{"text":"\\uE013\\uF802"}'

#sub 4 from both temps
scoreboard players remove $maxTemp gc_count 4
scoreboard players remove $temp gc_count 4

#loop if there are more characters necessary
execute if score $maxTemp gc_count matches 1.. run function gaeacraft:hud/aura