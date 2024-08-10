# release the players
function spawn_cages:unlock_players

# summon fire work
execute at @e[type=minecraft:marker,tag=cage_center] run summon firework_rocket ~ ~2 ~ {LifeTime:30,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"large_ball",has_twinkle:1,has_trail:1,colors:[I;2437522],fade_colors:[I;15435844]}]}}}}
