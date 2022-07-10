scoreboard players enable @a moneten
scoreboard players enable @a deposit
scoreboard players enable @a pay
scoreboard players enable @a transfer
execute as @a if score @s moneten_target matches 1.. run scoreboard players enable @s cancelTransfer

scoreboard players set @a moneten -1
