setblock 996 50 1011 stone_pressure_plate[powered=false]

scoreboard players set game_status value 1
scoreboard players set random_event value 800
scoreboard players reset @a death_count
scoreboard players set @a cd 0

scoreboard players set @a tnt_cd 0
scoreboard players set @a tnt_use 0
scoreboard players set @a snowball_cd 0
scoreboard players set @a snowball_use 0
scoreboard players set @a jigsaw_cd 0
scoreboard players set jigsaw_use value 0
scoreboard players set @a end_crystal_cd 0
scoreboard players set @a end_crystal_use 0
scoreboard players set @a clock_cd 0
scoreboard players set clock_use value 0
scoreboard players set @a rocket_cd 0
execute if score all_items value matches 0 run scoreboard players set @a[scores={Item8_status=1}] rocket_use 2
execute if score all_items value matches 1 run scoreboard players set @a rocket_use 2
execute if score all_items value matches 0 run scoreboard players set @a[scores={Item9_status=1}] totem_use 1
execute if score all_items value matches 1 run scoreboard players set @a totem_use 1

scoreboard objectives setdisplay sidebar level

execute as @e[tag=ceiling,type=minecraft:marker] at @s run fill ~ ~-1 ~ ~-32 ~-1 ~-32 minecraft:air

team join player @a
clear @a
spawnpoint @a 0 97 0 90
gamemode adventure @a

title @a clear
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl record @s ~ ~ ~ 2147483647 1 1
title @a title ""
title @a subtitle {"translate":"floorisair.text.game_start","fallback":"Game starts!","bold":true}

kill @e[type=minecraft:item]