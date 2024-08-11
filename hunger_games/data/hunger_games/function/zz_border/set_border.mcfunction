# warn the players on there action bar
$title @a actionbar {"text":"The world border will shrink to x&z = ±$(next_coords) for the next 10 minutes","color":"red"}

# warn the players in chat
$tellraw @a {"text":"The world border will shrink to x&z = ±$(next_coords) for the next 10 minutes","color":"red"}

# set the world border
$worldborder set $(next) 60

# calculate the next size
function hunger_games:zz_border/next_size