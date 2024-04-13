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

# change the state in the data storage
data modify storage speedrun state set value finished
