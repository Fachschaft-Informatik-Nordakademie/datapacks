# warn the players
$title @a actionbar {"text":"The world border will shrink to x&z = ±$(next) for the next 10 minutes","color":"red"}

# set the world border
$worldborder set $(next) 600

# calculate the next size
function hunger_games:zz_border/next_size