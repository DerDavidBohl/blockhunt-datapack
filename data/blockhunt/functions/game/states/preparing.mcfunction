execute if score #prepareTime bh.global matches 1.. run scoreboard players remove #prepareTime bh.global 1
execute store result bossbar preparebar value run scoreboard players get #prepareTime bh.global

function blockhunt:transformation/tick
function blockhunt:giveblock/tick

effect give @a[team=bh.hunters] minecraft:blindness 10
effect give @a[team=bh.hunters] minecraft:slowness 1 255

execute if score #prepareTime bh.global matches 0 run function blockhunt:game/change/state/to/playing