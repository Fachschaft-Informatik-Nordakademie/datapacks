##
 # lock_player.mcfunction
 # 
 #
 # Created by .
##
execute if score @s .lock_id matches 0.. run function speedrun:_unlock_player

summon minecraft:marker ~ ~ ~ {Tags:["lock","new_lock_marker"]}

scoreboard players add .global .lock_id 1
scoreboard players operation @e[type=minecraft:marker,tag=new_lock_marker] .lock_id = .global .lock_id
scoreboard players operation @s .lock_id = .global .lock_id

tag @s add was_locked
tag @e remove new_lock_marker

# make it impossible to mine blocks
attribute @s minecraft:player.block_break_speed base set 0
