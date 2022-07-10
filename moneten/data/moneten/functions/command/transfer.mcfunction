# find player
scoreboard players operation id moneten_buffer = @s transfer
execute as @a if score @s tpa.pid = id moneten_buffer run tag @s add moneten_target

# execute
execute unless entity @a[tag=moneten_target,limit=1] run function moneten:fulfill/transfer_not_found
execute if entity @a[tag=moneten_target,limit=1] run function moneten:fulfill/transfer

# clean up
scoreboard players reset id moneten_buffer
tag @a remove moneten_target
