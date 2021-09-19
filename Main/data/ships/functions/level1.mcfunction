#Level1
#Checing to which Direction is He moving
execute if score @s xRotation matches 1351..1800 run execute at @s run clone ~-1 ~-2 ~-2 ~1 ~2 ~4 ~-1 ~-2 ~-3 masked move
execute if score @s xRotation matches -1800..-1351 run execute at @s run clone ~-1 ~-2 ~-2 ~1 ~2 ~4 ~-1 ~-2 ~-3 masked move

execute if score @s xRotation matches -1349..-451 run execute at @s run clone ~-1 ~-2 ~-2 ~1 ~2 ~4 ~ ~-2 ~-2 masked move
execute if score @s xRotation matches -449..449 run execute at @s run clone ~-1 ~-2 ~-2 ~1 ~2 ~4 ~-1 ~-2 ~-1 masked move
execute if score @s xRotation matches 451..1349 run execute at @s run clone ~-1 ~-2 ~-2 ~1 ~2 ~4 ~-2 ~-2 ~-2 masked move

summon armor_stand ~-1 ~-2 ~-2 {NoGravity:1b,Small:1b,Invisible:1b,Tags:["CheckingPointForShips_L1"]}


execute if score @s xRotation matches 1351..1800 run execute as @e[tag=CheckingPointForShips_L1, sort=nearest, limit=1] at @s run execute as @e[dx=2,dy=5,dz=6] at @s run tp @s ~ ~ ~-1
execute if score @s xRotation matches -1800..-1351 run execute as @e[tag=CheckingPointForShips_L1, sort=nearest, limit=1] at @s run execute as @e[dx=2,dy=5,dz=6] at @s run tp @s ~ ~ ~-1

execute if score @s xRotation matches -1349..-451 run execute as @e[tag=CheckingPointForShips_L1, sort=nearest, limit=1] at @s run execute as @e[dx=2,dy=5,dz=6] at @s run tp @s ~1 ~ ~
execute if score @s xRotation matches -449..449 run execute as @e[tag=CheckingPointForShips_L1, sort=nearest, limit=1] at @s run execute as @e[dx=2,dy=5,dz=6] at @s run tp @s ~ ~ ~1
execute if score @s xRotation matches 451..1349 run execute as @e[tag=CheckingPointForShips_L1, sort=nearest, limit=1] at @s run execute as @e[dx=2,dy=5,dz=6] at @s run tp @s ~-1 ~ ~

kill @e[tag=CheckingPointForShips_L1, sort=nearest, limit=1]