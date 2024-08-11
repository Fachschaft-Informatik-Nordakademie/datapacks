# decrease the counter
scoreboard players operation counter .countdown -= #1 .countdown

# store the countdown value in the storage
execute store result storage minecraft:countdown counter int 1 run scoreboard players get counter .countdown

# print the countdown
function hunger_games:zz_countdown/print_countdown with storage countdown

# repeat this until 0 is reached
execute unless score counter .countdown <= #1 .countdown run schedule function hunger_games:zz_countdown/countdown 1s

# start the game when 0 is reached
execute if score counter .countdown <= #1 .countdown run function hunger_games:zz_countdown/start_game
