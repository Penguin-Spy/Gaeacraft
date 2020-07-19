#gaeacraft:hud/aura.mcfunction
#loop for generating the player's aura section of their hud.
#called once to start creating display, returns full display in 0 0 0's Text1 & Text2
#E00F - E014: aura

#Determine the character, and prepend it to previous text
execute if score $temp gaeacraft.count matches 4.. run data modify storage gaeacraft:hud aura prepend value '{"translate":"space.-2","with":[{"font":"gaeacraft:icons","text":"\\uE00F"}]}'
execute if score $temp gaeacraft.count matches 3 run data modify storage gaeacraft:hud aura prepend value '{"translate":"space.-2","with":[{"font":"gaeacraft:icons","text":"\\uE010"}]}'
execute if score $temp gaeacraft.count matches 2 run data modify storage gaeacraft:hud aura prepend value '{"translate":"space.-2","with":[{"font":"gaeacraft:icons","text":"\\uE011"}]}'
execute if score $temp gaeacraft.count matches 1 run data modify storage gaeacraft:hud aura prepend value '{"translate":"space.-2","with":[{"font":"gaeacraft:icons","text":"\\uE012"}]}'
execute if score $temp gaeacraft.count matches ..0 run data modify storage gaeacraft:hud aura prepend value '{"translate":"space.-2","with":[{"font":"gaeacraft:icons","text":"\\uE013"}]}'

#sub 4 from both temps
scoreboard players remove $maxTemp gaeacraft.count 4
scoreboard players remove $temp gaeacraft.count 4

#loop if there are more characters necessary
execute if score $maxTemp gaeacraft.count matches 1.. run function gaeacraft:hud/aura