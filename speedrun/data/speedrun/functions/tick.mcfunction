# this runns at every tick

# lock all players if the speedrun is in the state setup
execute if data storage speedrun {state:setup} as @a[tag=!was_locked] at @s run function speedrun:_lock_player

# tp the players back to the lock position if conditions are given
execute if data storage speedrun {state:setup} as @a[scores={lock_id=0..}] at @s unless entity @e[type=minecraft:marker,tag=lock,distance=..1] run function speedrun:_lock_tp

# show particles for testing when holding the debug stick
execute if entity @a[nbt={SelectedItem:{id:"minecraft:debug_stick"}}] run execute at @e[type=minecraft:marker] run particle minecraft:flame ~ ~ ~ 0 0 0 0 1
