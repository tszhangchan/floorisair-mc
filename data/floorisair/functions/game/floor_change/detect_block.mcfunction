# 自動變化
execute if score game_status value matches 1 as @a[team=player] if score @s cd matches ..1 at @s if block ~ ~-1 ~ #floorisair:floor align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=minecraft:marker,tag=auto_floor,distance=..0.1] run tag @s add auto_floor_gen
execute as @a[tag=auto_floor_gen] at @s align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["auto_floor"]}
execute as @a[tag=auto_floor_gen] at @s align xyz positioned ~0.5 ~ ~0.5 run scoreboard players set @e[distance=..0.1,tag=auto_floor,type=minecraft:marker] auto_cd 100
execute as @a[tag=auto_floor_gen] run tag @s remove auto_floor_gen

execute as @e[tag=auto_floor,type=minecraft:marker] at @s if block ~ ~-1 ~ minecraft:air run kill @s

execute if score game_status value matches 1 as @e[tag=auto_floor,type=minecraft:marker] if score @s auto_cd matches ..1 at @s if block ~ ~-1 ~ #floorisair:floor_yellow run function floorisair:game/floor_change/floor_yellow
execute if score game_status value matches 1 as @e[tag=auto_floor,type=minecraft:marker] if score @s auto_cd matches ..1 at @s if block ~ ~-1 ~ #floorisair:floor_orange run function floorisair:game/floor_change/floor_orange
execute if score game_status value matches 1 as @e[tag=auto_floor,type=minecraft:marker] if score @s auto_cd matches ..1 at @s if block ~ ~-1 ~ #floorisair:floor_red run function floorisair:game/floor_change/floor_red

# 玩家腳下方塊變化
execute if score game_status value matches 1 as @a[team=player] if score @s cd matches ..1 at @s if block ~ ~-1 ~ #floorisair:floor_gray run function floorisair:game/floor_change/floor_gray
execute if score game_status value matches 1 as @a[team=player] if score @s cd matches ..1 at @s if block ~ ~-1 ~ #floorisair:floor_yellow run function floorisair:game/floor_change/floor_yellow
execute if score game_status value matches 1 as @a[team=player] if score @s cd matches ..1 at @s if block ~ ~-1 ~ #floorisair:floor_orange run function floorisair:game/floor_change/floor_orange
execute if score game_status value matches 1 as @a[team=player] if score @s cd matches ..1 at @s if block ~ ~-1 ~ #floorisair:floor_red run function floorisair:game/floor_change/floor_red