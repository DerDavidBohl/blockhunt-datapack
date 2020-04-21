#giveblock

execute as @a[team=bh.blocks] run function blockhunt:giveblock/bysneaking

scoreboard players set @a bh.sneakingMC 0
scoreboard players set @a bh.jumping 0
