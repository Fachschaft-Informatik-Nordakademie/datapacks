# create a scoreboard that counts the deaths
scoreboard objectives add deaths deathCount

# create a scoreboard that counts the kills and display it
scoreboard objectives add kills playerKillCount
scoreboard objectives setdisplay list kills

# set everybodys title times
title @a times 0s 1s 0s

# trigger the countdown
function hunger_games:zz_countdown/countdown