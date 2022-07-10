execute if score @s moneten_bank >= @s transfer run function moneten:fulfill/do_transfer
execute unless score @s moneten_bank >= @s transfer run function moneten:fulfill/not_enough_money

function moneten:fulfill/cancel_transfer
