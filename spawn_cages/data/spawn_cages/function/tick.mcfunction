# this runns at every tick

# show particles for testing when holding the debug stick
execute if entity @a[nbt={SelectedItem:{id:"minecraft:debug_stick"}}] run execute at @e[type=minecraft:marker] run particle minecraft:flame ~ ~ ~ 0 0 0 0 1

# lock all players if the spawn _circle was generated
execute if data storage spawn_cages {state:generated} as @a[tag=!was_locked] at @s run function spawn_cages:zz_lock/lock_player

# tp the players back to the lock position if conditions are given
execute if data storage spawn_cages {state:generated} run function spawn_cages:zz_lock/lock_tp_loop