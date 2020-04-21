# Gamestates:
# 0: Stopped
# 1: Preparing
# 2: Playing
# 3: Finishing

## Preparing
execute if score #gameState bh.global matches 1 run function blockhunt:game/states/preparing

## Playing
execute if score #gameState bh.global matches 2 run function blockhunt:game/states/playing


kill @e[type=item]
# execute as @a at @a run fill ~ ~ ~ ~ ~-50 ~ tnt replace minecraft:grass_block

