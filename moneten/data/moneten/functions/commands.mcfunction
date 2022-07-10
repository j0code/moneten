execute as @a if score @s moneten_target matches 1.. run tag @s add moneten_transferring

execute as @a if score @s moneten matches 0.. run function moneten:command/moneten
execute as @a if score @s deposit matches 1.. run function moneten:command/deposit
execute as @a if score @s pay matches 1.. at @s run function moneten:command/pay
execute as @a[tag=!moneten_transferring] if score @s transfer matches 1.. run function moneten:command/transfer
execute as @a[tag=moneten_transferring] if score @s transfer matches 1.. run function moneten:command/complete_transfer
execute as @a if score @s cancelTransfer matches 1.. at @s run function moneten:command/cancel_transfer

tag @e remove moneten_transferring
