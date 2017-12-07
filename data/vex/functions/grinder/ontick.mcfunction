# Grinder Selector: @e[type=armor_stand,nbt={CustomName:vex_grinder,Invulnerable:1b}]

# Create a grinder if requirements are met
# Requirements: Drop a diamond block on top of a furnace
execute at @e[nbt={Item:{id:"minecraft:diamond_block",Count:1b}}] if block ~ ~-1 ~ minecraft:furnace unless entity @e[type=armor_stand,nbt={CustomName:"vex_grinder",Invulnerable:1b},distance=..2] run function vex:grinder/create

# Create grinding animation
execute as @e[type=armor_stand,nbt={CustomName:vex_grinder,Invulnerable:1b}] at @s if block ~ ~-1 ~ minecraft:furnace[lit=true] run function vex:grinder/animation

# Do the actual grinding
execute as @e[type=armor_stand,nbt={CustomName:vex_grinder,Invulnerable:1b}] at @s if block ~ ~-1 ~ minecraft:furnace[lit=true] run function vex:grinder/grind

# Destroy if there is no longer a furnace underneath
execute as @e[type=armor_stand,nbt={CustomName:vex_grinder,Invulnerable:1b}] at @s unless block ~ ~-1 ~ minecraft:furnace run kill @s
