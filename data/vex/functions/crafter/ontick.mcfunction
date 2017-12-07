# Create a crafter if conditions are met
# Conditions: drop an iron block on a crafting table
execute at @e[type=item,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] if block ~ ~-1 ~ minecraft:crafting_table
