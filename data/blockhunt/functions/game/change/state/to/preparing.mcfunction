say Preperation begonnen
clear @a

execute as @a[team=bh.hunters] run function blockhunt:convert/to/hunters
scoreboard players set @a bh.facing 0

execute store result bossbar nexthintbar value run scoreboard players get #hinttimer bh.global
# 5 Minuten
scoreboard players set #prepareTime bh.global 6000

bossbar set nexthintbar visible false
bossbar set gamebar visible false
bossbar set preparebar visible true

bossbar set minecraft:preparebar max 6000
bossbar set preparebar players @a

scoreboard players set #gameState bh.global 1