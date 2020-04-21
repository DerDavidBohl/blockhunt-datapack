say Playing begonnen# 30 Minuten

# 30 Minuten
scoreboard players set #gameTime bh.global 36000
bossbar set gamebar max 36000

# Hinweiszeit Anfangs 10 Minuten
scoreboard players set #hintinterval bh.global 12000
scoreboard players set #hinttimer bh.global 0

bossbar set gamebar visible true
bossbar set gamebar players @a

bossbar set nexthintbar visible true
bossbar set nexthintbar players @a

bossbar set preparebar visible false

effect clear @a[team=bh.hunters]
scoreboard players set #gameState bh.global 2