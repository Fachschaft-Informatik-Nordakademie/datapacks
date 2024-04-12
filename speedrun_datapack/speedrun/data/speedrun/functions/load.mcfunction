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
