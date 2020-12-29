execute if data entity @s SelectedItem run item entity @s weapon.offhand replace book 1 
execute unless data entity @s SelectedItem run item entity @s weapon.mainhand replace book 1 

recipe take @s custom_crafting_table:book
advancement revoke @s only custom_crafting_table:recipe_book