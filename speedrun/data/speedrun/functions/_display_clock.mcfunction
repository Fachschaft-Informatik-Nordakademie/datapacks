# display the clock in the actionbar of every player. add a starting 0 if needed

# check if the hour and minut need a starting 0
$execute if data storage speedrun {state:active} if score sec timer matches 0..9 if score min timer matches 0..9 run title @a actionbar {"text":"$(hours):0$(min):0$(sec)"}
$execute if data storage speedrun {state:stopped} if score sec timer matches 0..9 if score min timer matches 0..9 run title @a actionbar {"text":"$(hours):0$(min):0$(sec)","color":"red"}
$execute if data storage speedrun {state:finished} if score sec timer matches 0..9 if score min timer matches 0..9 run title @a actionbar {"text":"$(hours):0$(min):0$(sec)","color":"green"}

# check if only the sec have a starting 0
$execute if data storage speedrun {state:active} if score sec timer matches 0..9 unless score min timer matches 0..9 run title @a actionbar {"text":"$(hours):$(min):0$(sec)"}
$execute if data storage speedrun {state:stopped} if score sec timer matches 0..9 unless score min timer matches 0..9 run title @a actionbar {"text":"$(hours):$(min):0$(sec)","color":"red"}
$execute if data storage speedrun {state:finished} if score sec timer matches 0..9 unless score min timer matches 0..9 run title @a actionbar {"text":"$(hours):$(min):0$(sec)","color":"green"}

# check if only the min have a starting 0
$execute if data storage speedrun {state:active} unless score sec timer matches 0..9 if score min timer matches 0..9 run title @a actionbar {"text":"$(hours):0$(min):$(sec)"}
$execute if data storage speedrun {state:stopped} unless score sec timer matches 0..9 if score min timer matches 0..9 run title @a actionbar {"text":"$(hours):0$(min):$(sec)","color":"red"}
$execute if data storage speedrun {state:finished} unless score sec timer matches 0..9 if score min timer matches 0..9 run title @a actionbar {"text":"$(hours):0$(min):$(sec)","color":"green"}

# check if nothing needs a starting 0
$execute if data storage speedrun {state:active} unless score sec timer matches 0..9 unless score min timer matches 0..9 run title @a actionbar {"text":"$(hours):$(min):$(sec)"}
$execute if data storage speedrun {state:stopped} unless score sec timer matches 0..9 unless score min timer matches 0..9 run title @a actionbar {"text":"$(hours):$(min):$(sec)","color":"red"}
$execute if data storage speedrun {state:finished} unless score sec timer matches 0..9 unless score min timer matches 0..9 run title @a actionbar {"text":"$(hours):$(min):$(sec)","color":"green"}
