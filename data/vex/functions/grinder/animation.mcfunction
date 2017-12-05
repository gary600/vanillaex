# Store, increment, and reload rotation
execute store result score @s vex_rotation run data get entity @s Rotation[0]
scoreboard players add @s vex_rotation 2
execute store result entity @s Rotation[0] float 1.0 run scoreboard players get @s vex_rotation

# Show cloud particle
particle minecraft:cloud

# Sound, activates every 77 ticks
scoreboard players add @s vex_counter 1
execute if entity @s[scores={vex_counter=77..}] run playsound minecraft:entity.minecart.riding block @a[distance=..20] ~ ~ ~ 0.5 0.1
execute if entity @s[scores={vex_counter=77..}] run scoreboard players set @s vex_counter 0
