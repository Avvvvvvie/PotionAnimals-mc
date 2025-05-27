### Bhāskara I's sine approximation formula scaled by 100

scoreboard players set #multiplier potionanimal 1
execute if score #x potionanimal matches ..0 run scoreboard players set #multiplier potionanimal -1
execute if score #x potionanimal matches ..0 run scoreboard players add #x potionanimal 180

scoreboard players operation #x potionanimal %= #360 potionanimal

scoreboard players set #temp potionanimal 180
scoreboard players operation #temp potionanimal -= #x potionanimal
scoreboard players operation #x potionanimal *= #temp potionanimal
scoreboard players set #result potionanimal 4
scoreboard players operation #result potionanimal *= #x potionanimal
scoreboard players set #temp1 potionanimal 40500
scoreboard players operation #temp1 potionanimal -= #x potionanimal
scoreboard players operation #result potionanimal *= #100 potionanimal
scoreboard players operation #result potionanimal /= #temp1 potionanimal

scoreboard players operation #result potionanimal *= #multiplier potionanimal