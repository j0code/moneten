# get moneten of self
execute if score @s moneten matches 0 run tellraw @s [{"text":"[","color":"gray"},{"text":"Moneten","color":"gold","hoverEvent":{"action":"show_text","value":"\u00a76Minecraft Moneten\n\u00a7a[✔] \u00a7cMr. Krabs \u00a7aapproved"}},{"text":"]","color":"gray"}," ",{"text":"You currently have ","color":"gray"},{"score":{"objective":"moneten_bank","name":"@s"},"color":"green"},{"text":" Moneten","color":"green"}]

# get moneten of player with pid
execute if score @s moneten matches 1.. run scoreboard players operation id moneten_buffer = @s moneten
execute if score @s moneten matches 1.. as @a if score @s tpa.pid = id moneten_buffer run tag @s add moneten_target

execute if score @s moneten matches 1.. if entity @a[tag=moneten_target,limit=1] run tellraw @s [{"text":"[","color":"gray"},{"text":"Moneten","color":"gold","hoverEvent":{"action":"show_text","value":"\u00a76Minecraft Moneten\n\u00a7a[✔] \u00a7cMr. Krabs \u00a7aapproved"}},{"text":"]","color":"gray"}," ",{"selector":"@a[tag=moneten_target,limit=1]","color":"yellow"}," ",{"text":"currently has ","color":"gray"},{"score":{"objective":"moneten_bank","name":"@a[tag=moneten_target,limit=1]"},"color":"green"},{"text":" Moneten","color":"green"}]
execute if score @s moneten matches 1.. unless entity @a[tag=moneten_target,limit=1] run tellraw @s [{"text":"[","color":"gray"},{"text":"Moneten","color":"gold","hoverEvent":{"action":"show_text","value":"\u00a76Minecraft Moneten\n\u00a7a[✔] \u00a7cMr. Krabs \u00a7aapproved"}},{"text":"]","color":"gray"}," ",{"text":"Player not found.","color":"red"}]

# clean up
scoreboard players reset id moneten_buffer
tag @a remove moneten_target
