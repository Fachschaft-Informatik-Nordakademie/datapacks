# this runns at every tick

# show particles for testing when holding the debug stick
execute if entity @a[nbt={SelectedItem:{id:"minecraft:debug_stick"}}] run execute at @e[type=minecraft:marker] run particle minecraft:flame ~ ~ ~ 0 0 0 0 1

