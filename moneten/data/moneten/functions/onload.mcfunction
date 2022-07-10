tellraw @a [{"text":"[","color":"gray"},{"text":"Moneten","color":"gold","hoverEvent":{"action":"show_text","value":"\u00a76Minecraft Moneten\n\u00a7a[✔] \u00a7cMr. Krabs \u00a7aapproved"}},{"text":"]","color":"gray"}," ",{"text":"Loaded Moneten","color":"blue"}," ",{"text":"v1.0","color":"yellow"}]

scoreboard objectives add moneten_bank dummy "\u00a76Moneten"
scoreboard objectives add moneten_buffer dummy
scoreboard objectives add moneten_target dummy
scoreboard objectives add moneten trigger "\u00a77Moneten Anzeige"
scoreboard objectives add deposit trigger "\u00a7bDeposit Moneten"
scoreboard objectives add pay trigger "\u00a7aPay Moneten"
scoreboard objectives add transfer trigger "\u00a77Transfer Moneten"
scoreboard objectives add cancelTransfer trigger "\u00a7cCancel Moneten Transfer"

scoreboard objectives add moneten_death deathCount

# tellraw @a [{"text":"[","color":"gray"},{"text":"Moneten","color":"gold","hoverEvent":{"action":"show_text","value":"\u00a76Minecraft Moneten\n\u00a7a[✔] \u00a7cMr. Krabs \u00a7aapproved"}},{"text":"]","color":"gray"}," ",{"text":"","color":"gray"}]
