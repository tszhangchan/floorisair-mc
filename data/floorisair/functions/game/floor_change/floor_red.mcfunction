execute if block ~ ~-1 ~ #floorisair:floor_red run setblock ~ ~-1 ~ minecraft:air destroy
execute if entity @s[type=minecraft:player] run scoreboard players set @s cd 4
execute if entity @s[tag=auto_floor,type=minecraft:marker] run kill @s