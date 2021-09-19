#Lentgh of a Command in command block, because it's a string, duh

execute at @s store result score @s ShipLevel run data get block ~ ~-1 ~ Command

execute as @s if score @s ShipLevel matches 1 run function ships:level1
execute as @s if score @s ShipLevel matches 2 run function ships:level2
execute as @s if score @s ShipLevel matches 3 run function ships:level3