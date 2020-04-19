scoreboard players enable @a[team=bh.blocks] bh.currentBlock
scoreboard players enable @a[team=bh.blocks] bh.triggerFacing

execute at @e[type=snowball] run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 fire replace minecraft:air

execute as @a store result score @s bh.y run data get entity @s Pos[1] 10000
execute as @a run scoreboard players operation @s bh.constants %= #50 bh.y

kill @e[name=blockhunt_block]
kill @e[type=item]



effect give @a[team=bh.blocks, scores={bh.health=20}] minecraft:invisibility 1 0 true
execute as @a[team=bh.blocks] if entity @s[scores={bh.health=0..19}] run effect clear @s minecraft:invisibility
# execute as @a[team=bh.blocks] unless data entity @s Inventory[{Slot:9b}] run effect clear @s minecraft:invisibility

function blockhunt:triggerdroppedscoreboards
# function blockhunt:givedroppedscoreboards

execute as @a[team=bh.blocks, scores={bh.health=20,bh.facing=0}] run function blockhunt:showblockeast
execute as @a[team=bh.blocks, scores={bh.health=20,bh.facing=1}] run function blockhunt:showblockwest
execute as @a[team=bh.blocks, scores={bh.health=20,bh.facing=2}] run function blockhunt:showblocksouth
execute as @a[team=bh.blocks, scores={bh.health=20,bh.facing=3}] run function blockhunt:showblocknorth

execute as @a[team=bh.blocks, scores={bh.health=20}] at @s run data merge entity @e[name=blockhunt_block,limit=1,distance=..1] {BlockState: {Properties: {facing: "south"}}}

execute as @a[team=bh.blocks] run function blockhunt:givebysneaking
execute as @a[scores={bh.sneakingMC=1.., bh.jumping=1..}] run function blockhunt:changefacing



scoreboard players set @a bh.sneakingMC 0
scoreboard players set @a bh.jumping 0
function blockhunt:resetdroppedscoreboards
# execute as @a at @a run fill ~ ~ ~ ~ ~-50 ~ tnt replace minecraft:grass_block

