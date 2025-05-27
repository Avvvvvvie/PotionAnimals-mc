# cos(x) = sin(x + 90deg)
scoreboard players add #x potionanimal 90
execute if score #x potionanimal matches 180.. run scoreboard players remove #x potionanimal 360
function potionanimals:sine