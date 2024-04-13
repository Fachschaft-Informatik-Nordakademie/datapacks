# this runs on speedrun:end

# turn daylight off
gamerule doDaylightCycle false

# stop the check winner
schedule clear speedrun:_check_winner

# stop the clock
schedule clear speedrun:_clock

# remove all scoreboards
scoreboard objectives remove teamSeenCredits
scoreboard objectives remove teamMembers
scoreboard objectives remove timer
scoreboard objectives remove team_loop

# remove all data storage
data remove storage teams
data remove storage seenWinningScreen
