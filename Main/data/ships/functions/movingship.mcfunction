scoreboard players set @s TimesClicked 0
execute as @s store result score @s xRotation run data get entity @s Rotation[0] 10
execute as @s at @s if block ~ ~-1 ~ minecraft:command_block run function ships:executingmoving


#Checing to which Direction is He moving
#execute if score @s xRotation matches 1351..1800 run say North
#execute if score @s xRotation matches -1800..-1351 run say North

#execute if score @s xRotation matches -1349..-451 run say East
#execute if score @s xRotation matches -449..449 run say South
#execute if score @s xRotation matches 451..1349 run say West