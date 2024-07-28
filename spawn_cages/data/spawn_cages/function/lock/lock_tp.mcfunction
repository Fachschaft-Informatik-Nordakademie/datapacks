##
 # lock_tp.mcfunction
 # 
 #
 # Created by .
##
scoreboard players operation .search .lock_id = @s .lock_id
execute as @e[type=marker,tag=lock] at @e[type=marker,tag=lock] if score @s .lock_id = .search .lock_id rotated as @p run tp @s ~ ~ ~ ~ ~
execute as @e[type=marker,tag=lock] if score @s .lock_id = .search .lock_id run tp @p @s
