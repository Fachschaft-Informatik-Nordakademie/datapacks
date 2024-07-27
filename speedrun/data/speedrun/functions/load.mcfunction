# This function runs at /reload
tellraw @a "Loaded speedrun datapack"

# turn off day light cycle
gamerule doDaylightCycle false

# create a teamSeenCredits scoreboard
scoreboard objectives add teamSeenCredits dummy

# create a scoreboard that tracks the teammembers
scoreboard objectives add teamMembers dummy

# create a timer scoreboard and initialise its valiues to 0
scoreboard objectives add timer dummy
scoreboard players add sec timer 0
scoreboard players add min timer 0
scoreboard players add hours timer 0

# create a scoreboard that handles the player locks
scoreboard objectives add lock_id dummy

# create a scoreboard that handles variables for the spawn circle
scoreboard objectives add .spawn_circle dummy
# initialise the angle as 360 to divide it by the # of players later
scoreboard players set angle .spawn_circle 360

# summon a armor stand at the world spawn to spawn the spwan circle there
kill @e[type=minecraft:armor_stand,tag=center]
summon minecraft:armor_stand ~0.5 ~ ~0.5 {Tags:["center"]}
