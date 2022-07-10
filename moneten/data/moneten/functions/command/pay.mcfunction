execute if entity @p[distance=0.0001..5] if score @s moneten_bank >= @s pay run function moneten:fulfill/pay
execute if entity @p[distance=0.0001..5] unless score @s moneten_bank >= @s pay run function moneten:funfill/not_enough_money
execute unless entity @p[distance=0.0001..5] run tellraw @s [{"text":"[","color":"gray"},{"text":"Moneten","color":"gold","hoverEvent":{"action":"show_text","value":"\u00a76Minecraft Moneten\n\u00a7a[✔] \u00a7cMr. Krabs \u00a7aapproved"}},{"text":"]","color":"gray"}," ",{"text":"There is no one in a 5 block radius.","color":"red"},"\n",{"text":"If you want to make theft-proof payments across a large distance, use","color":"gray"}," ",{"text":"/trigger transfer","color":"light_purple"}," ",{"text":"instead.","color":"gray"}]