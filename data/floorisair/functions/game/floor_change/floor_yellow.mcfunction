execute if block ~ ~-1 ~ minecraft:yellow_wool run setblock ~ ~-1 ~ minecraft:orange_wool destroy
execute if block ~ ~-1 ~ minecraft:yellow_concrete run setblock ~ ~-1 ~ minecraft:orange_concrete destroy
execute if block ~ ~-1 ~ minecraft:yellow_stained_glass run setblock ~ ~-1 ~ minecraft:orange_stained_glass destroy
execute if entity @s[type=minecraft:player] run scoreboard players set @s cd 4
execute if entity @s[tag=auto_floor,type=minecraft:marker] run scoreboard players set @s auto_cd 100