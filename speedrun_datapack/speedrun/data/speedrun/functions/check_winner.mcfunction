# this function runs after speedrun:start got called

# check if every team member saw the credits
function speedrun:team_loop {"function":"speedrun:team_seen_credits"}

# set the seenCredits tag so it's only eceuted once
tag @a[nbt={seenCredits:1b}, tag=!seenCredits] add seenCredits

# recall this after 0.5s (10t)
schedule function speedrun:check_winner 10t
