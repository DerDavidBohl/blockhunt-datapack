
scoreboard players set @s[scores={bh.sneakingMC=1..}] bh.isSneaking 1
scoreboard players set @s[scores={bh.sneakingMC=0}] bh.isSneaking 0
scoreboard players add @s[scores={bh.isSneaking=1}] bh.sneakingTime 1
scoreboard players set @s[scores={bh.isSneaking=0}] bh.sneakingTime 0
execute if score @s bh.sneakingTime matches 20.. at @s run function blockhunt:giveblock/standingon
execute if score @s bh.sneakingTime matches 20.. run scoreboard players set @s bh.sneakingTime 0