# summon a lock marker at the current position of the player
summon minecraft:marker ~ ~ ~ {Tags:["lock","new_lock_marker"]}

# add the UUID of the lock marker and the player to the .lock_id scoreboard. Set them to the same new value.
scoreboard players add .global .lock_id 1
scoreboard players operation @e[type=minecraft:marker,tag=new_lock_marker] .lock_id = .global .lock_id
scoreboard players operation @s .lock_id = .global .lock_id

# give the player the was_locked tag
tag @s add was_locked

# remove the new_lock_marker tag from the lock marker
tag @e remove new_lock_marker

# make it impossible for the player to mine blocks
attribute @s minecraft:player.block_break_speed base set 0
