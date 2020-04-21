execute if entity @a[team=bh.blocks] run say Die Blöcke haben gewonnen!
execute unless entity @a[team=bh.blocks] run say Die Hunter haben gewonnen!
effect clear @a
clear @a
team leave @a
bossbar set nexthintbar visible false
bossbar set preparebar visible false
bossbar set gamebar visible false
scoreboard players reset @a
scoreboard players set #gameState bh.global 0