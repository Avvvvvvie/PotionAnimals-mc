advancement revoke @s only potionanimals:use_potion

execute unless data entity @s SelectedItem.components."minecraft:custom_data".potionanimal run return fail

ride @s dismount

function potionanimals:dismount

execute store result score @s potionanimal run data get entity @s SelectedItem.components."minecraft:custom_data".potionanimal

function potionanimals:animals/map

effect give @e[tag=newPotionAnimal] slowness infinite 255 true
ride @s mount @e[tag=newPotionAnimal, limit=1]

tag @e[tag=newPotionAnimal] add potionanimals
tag @e[tag=newPotionAnimal] remove newPotionAnimal

effect give @s invisibility infinite 255 true
effect give @s slowness infinite 2 true

tag @s add isPotionAnimal