#Level2
#Checing to which Direction is He moving
execute if score @s xRotation matches 1351..1800 run execute at @s run clone ~-2 ~-3 ~-3 ~2 ~6 ~6 ~-2 ~-3 ~-4 masked move
execute if score @s xRotation matches -1800..-1351 run execute at @s run clone ~-2 ~-3 ~-3 ~2 ~6 ~6 ~-2 ~-3 ~-4 masked move

execute if score @s xRotation matches -1349..-451 run execute at @s run clone ~-2 ~-3 ~-3 ~2 ~6 ~6 ~-1 ~-3 ~-3 masked move
execute if score @s xRotation matches -449..449 run execute at @s run clone ~-2 ~-3 ~-3 ~2 ~6 ~6 ~-2 ~-3 ~-2 masked move
execute if score @s xRotation matches 451..1349 run execute at @s run clone ~-2 ~-3 ~-3 ~2 ~6 ~6 ~-3 ~-3 ~-3 masked move

summon armor_stand ~-2 ~-3 ~-3 {NoGravity:1b,Small:1b,Invisible:1b,Tags:["CheckingPointForShips_L2"]}


execute if score @s xRotation matches 1351..1800 run execute as @e[tag=CheckingPointForShips_L2, sort=nearest, limit=1] at @s run execute as @e[dx=4,dy=10,dz=8] at @s run tp @s ~ ~ ~-1
execute if score @s xRotation matches -1800..-1351 run execute as @e[tag=CheckingPointForShips_L2, sort=nearest, limit=1] at @s run execute as @e[dx=4,dy=10,dz=8] at @s run tp @s ~ ~ ~-1

execute if score @s xRotation matches -1349..-451 run execute as @e[tag=CheckingPointForShips_L2, sort=nearest, limit=1] at @s run execute as @e[dx=4,dy=10,dz=8] at @s run tp @s ~1 ~ ~
execute if score @s xRotation matches -449..449 run execute as @e[tag=CheckingPointForShips_L2, sort=nearest, limit=1] at @s run execute as @e[dx=4,dy=10,dz=8] at @s run tp @s ~ ~ ~1
execute if score @s xRotation matches 451..1349 run execute as @e[tag=CheckingPointForShips_L2, sort=nearest, limit=1] at @s run execute as @e[dx=4,dy=10,dz=8] at @s run tp @s ~-1 ~ ~

kill @e[tag=CheckingPointForShips_L2, sort=nearest, limit=1]