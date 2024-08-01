# TP the player to its assigned lock marker

# set the .search to the lock_id
scoreboard players operation .search .lock_id = @s .lock_id

# rotate the marker like the player is rotated in order to keep the players rotation when teleported
execute as @e[type=marker,tag=lock] at @e[type=marker,tag=lock] if score @s .lock_id = .search .lock_id rotated as @p run tp @s ~ ~ ~ ~ ~

# teleport the player
execute as @e[type=marker,tag=lock] if score @s .lock_id = .search .lock_id run tp @p @s
