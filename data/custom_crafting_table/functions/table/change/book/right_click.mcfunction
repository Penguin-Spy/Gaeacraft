execute if data entity @s SelectedItem run replaceitem entity @s weapon.offhand book 1 
execute unless data entity @s SelectedItem run replaceitem entity @s weapon.mainhand book 1 

recipe take @s custom_crafting_table:book
advancement revoke @s only custom_crafting_table:recipe_book