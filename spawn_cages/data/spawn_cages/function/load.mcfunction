# This function runs at /reload
tellraw @a "Loaded spawn_circle datapack"

# reset possible previous attemps by killing the summoned entitys
kill @e[type=marker, tag=cage_position]
kill @e[type=marker, tag=cage_center]
kill @e[type=marker, tag=lock]


# create a scoreboard that handles variables for the spawn circle
scoreboard objectives add .spawn_circle dummy
# initialise the angle as 360 to divide it by the # of players later
scoreboard players set angle .spawn_circle 360


# summon a armor stand at the world spawn to spawn the spwan circle there
kill @e[type=minecraft:armor_stand,tag=center]
summon minecraft:armor_stand ~0.5 ~ ~0.5 {Marker:1b, Invisible:1b, Tags:["center"]}


# create a scoreboard that handles the player locks
scoreboard objectives add .lock_id dummy