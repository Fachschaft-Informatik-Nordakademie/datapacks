scoreboard players operation .search lock_id = @s lock_id
execute as @e[type=minecraft:marker,tag=lock] if score @s lock_id = .search lock_id run kill @s
scoreboard players reset @s lock_id

effect clear @s minecraft:mining_fatigue
