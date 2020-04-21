
execute if score #gameTime bh.global matches 1.. run scoreboard players remove #gameTime bh.global 1
execute store result bossbar gamebar value run scoreboard players get #gameTime bh.global

function blockhunt:transformation/tick
function blockhunt:giveblock/tick
function blockhunt:convert/tick
function blockhunt:hint/tick

execute if score #gameTime bh.global matches 0 run function blockhunt:game/change/state/to/stopped