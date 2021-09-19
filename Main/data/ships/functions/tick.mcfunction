execute as @a[nbt={SelectedItem:{id:"minecraft:golden_hoe",tag:{ShipWheel:1b}}},nbt=!{Inventory:[{Slot:-106b}]}] run function ships:pickingwheelup
execute as @a[nbt=!{SelectedItem:{id:"minecraft:golden_hoe",tag:{ShipWheel:1b}}}] if score @s OffHandControler matches 1 run function ships:placingwheeldown

execute as @a if score @s TimesClicked matches 1.. at @s run function ships:movingship