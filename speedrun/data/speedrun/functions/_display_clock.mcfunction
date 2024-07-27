# display the clock in the actionbar of every player. add a starting 0 if needed

# check if the hour and minut need a starting 0
$execute if score sec timer matches 0..9 if score min timer matches 0..9 run title @a actionbar "$(hours):0$(min):0$(sec)"

# check if only the sec have a starting 0
$execute if score sec timer matches 0..9 unless score min timer matches 0..9 run title @a actionbar "$(hours):$(min):0$(sec)"

# check if only the min have a starting 0
$execute unless score sec timer matches 0..9 if score min timer matches 0..9 run title @a actionbar "$(hours):0$(min):$(sec)"

# check if nothing needs a starting 0
$execute unless score sec timer matches 0..9 unless score min timer matches 0..9 run title @a actionbar "$(hours):$(min):$(sec)"
