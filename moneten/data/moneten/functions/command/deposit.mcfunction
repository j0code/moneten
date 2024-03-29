# Calculate money
execute if data entity @s {SelectedItem:{id:"minecraft:player_head"}} store result score @s moneten_buffer run data get entity @s SelectedItem.Count 200
execute if data entity @s {SelectedItem:{id:"minecraft:emerald"}} store result score @s moneten_buffer run data get entity @s SelectedItem.Count 300
execute if data entity @s {SelectedItem:{id:"minecraft:emerald_block"}} store result score @s moneten_buffer run data get entity @s SelectedItem.Count 2700
execute if data entity @s {SelectedItem:{id:"minecraft:experience_bottle"}} store result score @s moneten_buffer run data get entity @s SelectedItem.Count 500
execute if data entity @s {SelectedItem:{id:"minecraft:diamond"}} store result score @s moneten_buffer run data get entity @s SelectedItem.Count 5000
execute if data entity @s {SelectedItem:{id:"minecraft:diamond_block"}} store result score @s moneten_buffer run data get entity @s SelectedItem.Count 45000
execute if data entity @s {SelectedItem:{id:"minecraft:echo_shard"}} store result score @s moneten_buffer run data get entity @s SelectedItem.Count 2500
execute if data entity @s {SelectedItem:{id:"minecraft:heart_of_the_sea"}} store result score @s moneten_buffer run data get entity @s SelectedItem.Count 5500
execute if data entity @s {SelectedItem:{id:"minecraft:nether_star"}} store result score @s moneten_buffer run data get entity @s SelectedItem.Count 12000
execute if data entity @s {SelectedItem:{id:"minecraft:dragon_egg"}} store result score @s moneten_buffer run data get entity @s SelectedItem.Count 100000

# Delete item from inv
execute if score @s moneten_buffer matches 1.. if data entity @s {SelectedItemSlot:0} run item replace entity @s container.0 with minecraft:air
execute if score @s moneten_buffer matches 1.. if data entity @s {SelectedItemSlot:1} run item replace entity @s container.1 with minecraft:air
execute if score @s moneten_buffer matches 1.. if data entity @s {SelectedItemSlot:2} run item replace entity @s container.2 with minecraft:air
execute if score @s moneten_buffer matches 1.. if data entity @s {SelectedItemSlot:3} run item replace entity @s container.3 with minecraft:air
execute if score @s moneten_buffer matches 1.. if data entity @s {SelectedItemSlot:4} run item replace entity @s container.4 with minecraft:air
execute if score @s moneten_buffer matches 1.. if data entity @s {SelectedItemSlot:5} run item replace entity @s container.5 with minecraft:air
execute if score @s moneten_buffer matches 1.. if data entity @s {SelectedItemSlot:6} run item replace entity @s container.6 with minecraft:air
execute if score @s moneten_buffer matches 1.. if data entity @s {SelectedItemSlot:7} run item replace entity @s container.7 with minecraft:air
execute if score @s moneten_buffer matches 1.. if data entity @s {SelectedItemSlot:8} run item replace entity @s container.8 with minecraft:air
execute if score @s moneten_buffer matches 1.. if data entity @s {SelectedItemSlot:9} run item replace entity @s container.9 with minecraft:air

# Add amount
execute if score @s moneten_buffer matches 1.. run scoreboard players operation @s moneten_bank += @s moneten_buffer

# Response
execute if score @s moneten_buffer matches 1.. run tellraw @s [{"text":"[","color":"gray"},{"text":"Moneten","color":"gold","hoverEvent":{"action":"show_text","value":"\u00a76Minecraft Moneten\n\u00a7a[✔] \u00a7cMr. Krabs \u00a7aapproved"}},{"text":"]","color":"gray"}," ",{"text":"Deposited ","color":"gray"},{"score":{"objective":"moneten_buffer","name":"@s"},"color":"green"},{"text":" Moneten","color":"green"}]
execute unless score @s moneten_buffer matches 1.. run tellraw @s [{"text":"[","color":"gray"},{"text":"Moneten","color":"gold","hoverEvent":{"action":"show_text","value":"\u00a76Minecraft Moneten\n\u00a7a[✔] \u00a7cMr. Krabs \u00a7aapproved"}},{"text":"]","color":"gray"}," ",{"text":"You have to hold the valuable item(s) in your main hand.","color":"red"}]
execute unless score @s moneten_buffer matches 1.. run tellraw @s [{"text":"[","color":"gray"},{"text":"Moneten","color":"gold","hoverEvent":{"action":"show_text","value":"\u00a76Minecraft Moneten\n\u00a7a[✔] \u00a7cMr. Krabs \u00a7aapproved"}},{"text":"]","color":"gray"}," ",{"text":"Valuable items:\n","color":"gray"},{"text":"Player Head","color":"#654321"},{"text":" (200 Moneten)\n","color":"green"},{"text":"Emerald","color":"dark_green"},{"text":" (300 Moneten)\n","color":"green"},{"text":"XP Bottle","color":"green"},{"text":" (300 Moneten)\n","color":"green"},{"text":"Echo Shard","color":"dark_aqua"},{"text":" (2500 Moneten)\n","color":"green"},{"text":"Diamond","color":"aqua"},{"text":" (5000 Moneten)\n","color":"green"},{"text":"Heart of the Sea","color":"blue"},{"text":" (5500 Moneten)\n","color":"green"},{"text":"Nether Star","color":"white"},{"text":" (12k Moneten)\n","color":"green"},{"text":"Dragon Egg","color":"#200040"},{"text":" (100k Moneten)\n","color":"green"}]

scoreboard players reset @s moneten_buffer
