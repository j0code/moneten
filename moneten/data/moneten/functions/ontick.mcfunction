function moneten:commands
function moneten:resettriggers
function moneten:enabletriggers

# give start money
execute as @a unless score @s moneten_bank matches -999999999..999999999 run scoreboard players set @s moneten_bank 1000

# remove money for death
#execute as @a if score @s moneten_death matches 1.. run scoreboard players remove @s moneten_bank 1000
#execute as @a if score @s moneten_death matches 1.. run tellraw @s [{"text":"[","color":"gray"},{"text":"Moneten","color":"gold","hoverEvent":{"action":"show_text","value":"\u00a76Minecraft Moneten\n\u00a7a[✔] \u00a7cMr. Krabs \u00a7aapproved"}},{"text":"]","color":"gray"}," ",{"text":"You died.","color":"gray"}," ",{"text":"1000 Moneten","color":"green"}," ",{"text":"fell out of your purse.","color":"gray"}]
#scoreboard players reset * moneten_death
