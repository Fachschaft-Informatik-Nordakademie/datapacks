# create a scoreboard that counts the deaths
scoreboard objectives remove deaths
scoreboard objectives add deaths deathCount

# create a scoreboard that counts the kills and display it
scoreboard objectives remove kills
scoreboard objectives add kills playerKillCount
scoreboard objectives setdisplay list kills

# create a scoreboard that counts the playtime
scoreboard objectives remove playTime
scoreboard objectives add playTime minecraft.custom:minecraft.play_time

# set everybodys title times
title @a times 0s 1s 0s

# trigger the countdown
function hunger_games:zz_countdown/countdown