tellraw @s [{"text":"[","color":"gray"},{"text":"Moneten","color":"gold","hoverEvent":{"action":"show_text","value":"\u00a76Minecraft Moneten\n\u00a7a[✔] \u00a7cMr. Krabs \u00a7aapproved"}},{"text":"]","color":"gray"}," ",{"text":"Started transfer process to","color":"gray"}," ",{"selector":"@a[tag=moneten_target,limit=1]","color":"yellow"},"\n",{"text":"Complete by invoking","color":"gray"}," ",{"text":"/trigger transfer set <amount>","color":"light_purple"}," ",{"text":"or cancel with","color":"gray"}," ",{"text":"/trigger cancelTransfer","color":"light_purple"}]

scoreboard players operation @s moneten_target = @s transfer