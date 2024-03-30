# This function runs at /reload
tellraw @a "Reloaded speedrun datapack"

# set up winning screen
# there seems to be no loop so this has to be done manually on the team creation
team add Team1
team add Team2
team add Team3
team add Team4
team add Team5
team add Team6
team add Team7
team add Team8

# create a teamSeenCredits scoreboard
scoreboard objectives add teamSeenCredits dummy

# create a scoreboard that tracks the teammembers
scoreboard objectives add teamMembers dummy

# create a timer scoreboard and initialise its valiues to 0
scoreboard objectives add timer dummy
scoreboard players add sec timer 0
scoreboard players add min timer 0
scoreboard players add hours timer 0
