# unlock all players
execute as @a run function spawn_cages:zz_lock/unlock_player

data modify storage minecraft:spawn_cages state set value "players_unlocked"

# turn on day light cycle
gamerule doDaylightCycle true