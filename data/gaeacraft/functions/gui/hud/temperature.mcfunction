#gaeacraft:gui/hud/temperature.mcfunction
#generates the player's temperature section of their hud.
#called once to start creating display, returns full display in 0 0 0's Text1 & Text2
#E01A - E01E: temperature

data modify storage gaeacraft:hud temperature set value '[{"translate":"space.0","with":[{"font":"gaeacraft:icons","text":"\\uE01A"}]},{"translate":"space.2"}]'