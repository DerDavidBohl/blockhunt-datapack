team add bh.blocks "Blocks"
team add bh.hunters "Hunters"

team modify bh.blocks collisionRule never
team modify bh.hunters collisionRule never

team modify bh.blocks friendlyFire false
team modify bh.hunters friendlyFire false

scoreboard objectives add bh.currentBlock trigger
scoreboard objectives add bh.facing dummy
scoreboard objectives add bh.triggerFacing trigger
scoreboard objectives add bh.health health
scoreboard objectives add bh.y dummy
scoreboard objectives add bh.constants dummy
scoreboard objectives add bh.sneakingMC minecraft.custom:minecraft.sneak_time
scoreboard objectives add bh.isSneaking dummy
scoreboard objectives add bh.sneakingTime dummy

scoreboard players set #50 bh.constants 50

function blockhunt:adddroppedscoreboards