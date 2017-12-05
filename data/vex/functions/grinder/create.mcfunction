# Create grinder stand
summon armor_stand ~ ~ ~ {CustomName:"vex_grinder",NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{id:"minecraft:diamond_boots",Count:1b},{},{},{}]}

# Create a leash knot, teleport the stand to it, and kill the leash knot (for centering)
summon leash_knot ~ ~ ~ {CustomName:"vex_orientation"}
tp @e[type=armor_stand,nbt={CustomName:"vex_grinder",Invulnerable:1b},distance=..2,limit=1] @e[type=leash_knot,name=vex_orientation,limit=1]
kill @e[type=leash_knot,name=vex_orientation]
execute as @e[type=armor_stand,nbt={CustomName:"vex_grinder",Invulnerable:1b},distance=..2,limit=1] at @s run tp @s ~ ~-0.5 ~

# Kill the diamond block used for crafting
kill @e[type=item,nbt={Item:{id:"minecraft:diamond_block",Count:1b}},distance=..0.1]
