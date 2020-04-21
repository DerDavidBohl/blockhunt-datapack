# Transformation

## Enable Triggers
scoreboard players enable @a[team=bh.blocks] bh.currentBlock
scoreboard players enable @a[team=bh.blocks] bh.triggerFacing

## Kill Blocks from last Tick
kill @e[name=blockhunt_block]

## Invisibility Handling
effect give @a[team=bh.blocks, scores={bh.health=20}] minecraft:invisibility 1 0 true
effect clear @a[team=bh.blocks,scores={bh.health=0..19}] minecraft:invisibility

## Change Facing
execute as @a[scores={bh.sneakingMC=1.., bh.jumping=1..}] run function blockhunt:transformation/changefacing

## Check for Drop
function blockhunt:transformation/dropdetection/do

## Show Block
execute as @a[team=bh.blocks, scores={bh.health=20,bh.facing=0}] run function blockhunt:transformation/show/east
execute as @a[team=bh.blocks, scores={bh.health=20,bh.facing=1}] run function blockhunt:transformation/show/west
execute as @a[team=bh.blocks, scores={bh.health=20,bh.facing=2}] run function blockhunt:transformation/show/south
execute as @a[team=bh.blocks, scores={bh.health=20,bh.facing=3}] run function blockhunt:transformation/show/north

