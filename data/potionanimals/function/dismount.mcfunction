advancement revoke @s only potionanimals:dismount

# execute on vehicle if entity @s[tag=potionanimals] run return fail

execute as @e[tag=potionanimals] on passengers on vehicle run tag @s add fine
execute as @e[tag=potionanimals] if entity @s[tag=!fine] run tp @s ~ -2000 ~
tag @e[tag=fine] remove fine


tag @s remove isPotionAnimal
tag @s remove backward
tag @s remove forward
tag @s remove left
tag @s remove right
tag @s remove jump
tag @s remove sprint

effect clear @s invisibility
effect clear @s slowness
attribute @s scale base reset

scoreboard players reset @s potionanimal