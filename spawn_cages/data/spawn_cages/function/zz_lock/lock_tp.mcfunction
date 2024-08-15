# rotate the marker like the player is rotated in order to keep the players rotation when teleported
$execute as @n[type=minecraft:marker,tag=player_$(current_player_name)] at @s rotated as $(current_player_name) run tp @s ~ ~ ~ ~ ~

# teleport the player
$execute as $(current_player_name) at @s unless entity @e[type=minecraft:marker, tag=player_$(current_player_name),distance=..1] run tp $(current_player_name) @n[type=marker,tag=player_$(current_player_name)]