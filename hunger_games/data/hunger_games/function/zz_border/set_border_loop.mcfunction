# set the border
function hunger_games:zz_border/set_border with storage border

# continue the loop 
execute if score next .border > stop .border run schedule function hunger_games:zz_border/set_border_loop 1800s