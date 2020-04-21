scoreboard players add #hinttimer bh.global 1
execute if score #hinttimer bh.global >= #hintinterval bh.global run function blockhunt:hint/triggerhint

execute store result bossbar nexthintbar value run scoreboard players get #hinttimer bh.global
execute store result bossbar nexthintbar max run scoreboard players get #hintinterval bh.global

