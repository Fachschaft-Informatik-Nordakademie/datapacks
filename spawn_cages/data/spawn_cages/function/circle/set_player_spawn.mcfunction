# Tell every player wich player is processed right now
$tellraw @a "Processing $(current_player_name)"

# give the marker the player name as a tag
$tag @s add player_$(current_player_name)

# Set the spawnpoint of the player
$execute as @s at @s run spawnpoint $(current_player_name) ~ ~ ~

# Tp the player top its spawn point
$execute as @s at @s run tp $(current_player_name) ~ ~ ~