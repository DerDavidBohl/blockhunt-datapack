function blockhunt:hint/givehint
scoreboard players set #hinttimer bh.global 0
execute if score #hintinterval bh.global matches 1000..6000 run scoreboard players operation #hintinterval bh.global -= #1000 bh.constants
execute if score #hintinterval bh.global matches 6000.. run scoreboard players operation #hintinterval bh.global /= #2 bh.constants
