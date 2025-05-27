advancement revoke @s only potionanimals:apply

execute store result score #x potionanimal run data get entity @s Rotation[0]

execute on vehicle store result entity @s Rotation[0] float 1 run scoreboard players get #x potionanimal

execute unless entity @s[tag=movement] run return fail

tag @s remove movement

# Rotation (0,0) -> Motion + (0,0,1)
# Rotation (90,0) -> Motion + (1,0,0)
# Rotation (0,90) -> Motion + (0,1,0)

# case forward:
# Motion[2] = cos(Rotation[0])
# Motion[0] = -sin(Rotation[0])

function potionanimals:sine
execute store result score sine potionanimal run scoreboard players get #result potionanimal

execute store result score #x potionanimal run data get entity @s Rotation[0]

function potionanimals:cosine
execute store result score cosine potionanimal run scoreboard players get #result potionanimal

scoreboard players set count potionanimal 0
scoreboard players set x potionanimal 0
scoreboard players set y potionanimal 0
scoreboard players set z potionanimal 0
execute if entity @s[tag=forward] run function potionanimals:movement/apply_forward
execute if entity @s[tag=backward] run function potionanimals:movement/apply_backward
execute if entity @s[tag=left] run function potionanimals:movement/apply_left
execute if entity @s[tag=right] run function potionanimals:movement/apply_right

scoreboard players operation x potionanimal /= count potionanimal
scoreboard players operation z potionanimal /= count potionanimal

execute if entity @s[tag=jump] run function potionanimals:movement/apply_jump
execute if entity @s[tag=sprint] run function potionanimals:movement/apply_sprint

execute on vehicle store result entity @s Motion[0] float 0.002 run scoreboard players get x potionanimal
execute unless score y potionanimal matches 0 on vehicle store result entity @s Motion[1] float 0.002 run scoreboard players get y potionanimal
execute on vehicle store result entity @s Motion[2] float 0.002 run scoreboard players get z potionanimal

