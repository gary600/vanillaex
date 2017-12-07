# Create variable objectives
scoreboard objectives add vex_counter1 dummy
scoreboard objectives add vex_counter2 dummy
scoreboard objectives add vex_counter3 dummy
scoreboard objectives add vex_counter4 dummy

# Create version
scoreboard objectives add vex_version dummy

# Create vex_globals if it doesn't exist
execute unless entity @e[type=armor_stand,name=vex_globals] run summon armor_stand 0 0 0 {CustomName:"vex_globals",Invisible:1b,Invulnerable:1b,NoGravity:1b}

# Set version number
scoreboard players set @e[type=armor_stand,name=vex_globals] vex_version 0

# Activate gameLoopFunction
gamerule gameLoopFunction vex:ontick

# Announce activation to players
tellraw @a ["",{"text":"[VanillaEX] ","color":"dark_green","bold":true},{"text":"VanillaEX version 0 has now been installed!","color":"none","bold":false}]
