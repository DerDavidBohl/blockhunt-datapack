# Convert
execute as @a[team=bh.blocks, scores={bh.deaths=1..}] run function blockhunt:convert/to/hunters
scoreboard players set @a[scores={bh.deaths=1..}] bh.deaths 0