team leave @a
clear @a
effect clear @a
spawnpoint @a 0 100 0 90
gamemode adventure @a
title @a times 0 10 2
title @a clear

tag @a remove winner
tag @a remove jigsaw_user
tag @a remove firework_user
tag @a remove clock_user
tag @a remove totem_user
tag @a remove totem_announced
tag @e remove number_chosen

scoreboard players set game_status value 0
scoreboard players reset ingame_player_count value
scoreboard players set random_event value 0
scoreboard players set @a cd 0
scoreboard players reset @a death_count
scoreboard players reset @a level
scoreboard players reset @a level_temp
scoreboard players reset @a on_air

scoreboard players set @a tnt_cd 0
scoreboard players set @a tnt_use 0
scoreboard players set @a snowball_cd 0
scoreboard players set @a snowball_use 0
scoreboard players set @a jigsaw_cd 0
scoreboard players set jigsaw_use value 0
scoreboard players set @a end_crystal_cd 0
scoreboard players set @a end_crystal_use 0
scoreboard players set clock_use value 0
scoreboard players set @a clock_cd 0
scoreboard players set @a firework_use 0
scoreboard players set @a firework_cd 0
scoreboard players set @a totem_use 0

scoreboard objectives remove level
scoreboard objectives add level dummy "所在層數"

scoreboard objectives setdisplay sidebar fiacoin

kill @a
kill @e[type=minecraft:item]
kill @e[type=minecraft:marker,tag=auto_floor]
kill @e[type=minecraft:marker,tag=snapper]
kill @e[type=minecraft:snowball]
kill @e[type=minecraft:tnt]
kill @e[type=minecraft:end_crystal]
kill @e[type=minecraft:slime]
kill @e[type=minecraft:blaze]
kill @e[type=minecraft:creeper]
kill @e[type=minecraft:ravager]
kill @e[type=minecraft:evoker]
kill @e[type=minecraft:evoker_fangs]
kill @e[type=minecraft:vex]

execute if score floor_texture value matches 0 as @e[tag=floor_reset,type=minecraft:marker] at @s run fill ~ ~-1 ~ ~-32 ~-1 ~-32 minecraft:light_gray_wool
execute if score floor_texture value matches 1 as @e[tag=floor_reset,type=minecraft:marker] at @s run fill ~ ~-1 ~ ~-32 ~-1 ~-32 minecraft:light_gray_concrete
execute if score floor_texture value matches 2 as @e[tag=floor_reset,type=minecraft:marker] at @s run fill ~ ~-1 ~ ~-32 ~-1 ~-32 minecraft:light_gray_stained_glass

tellraw @a ["\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n"]
tellraw @a ["",{"text":"[遊戲]","color":"green","bold":true}," 地板是空氣！遊戲已重置，祝您遊戲愉快！"]
playsound minecraft:entity.experience_orb.pickup voice @a 0 100 0 2147483647 1 1