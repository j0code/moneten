function moneten:commands
function moneten:resettriggers
function moneten:enabletriggers

# give start money
execute as @a unless score @s moneten_bank matches -999999999..999999999 run scoreboard players set @s moneten_bank 1000
