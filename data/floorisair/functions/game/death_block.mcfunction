execute if score game_status value matches 1 as @a[team=player] unless score @s totem_use matches 1 at @s if block ~ ~-1 ~ #floorisair:death_block run tellraw @a ["",{"translate":"floorisair.text.death_block","fallback":"%s %s fell to the bottom.","with":[{"translate":"floorisair.title.death","fallback":"[Death]","color":"red","bold":true},{"selector":"@s"}]}]
execute if score game_status value matches 1 as @a[team=player] unless score @s totem_use matches 1 at @s if block ~ ~-1 ~ #floorisair:death_block run kill @s
execute if score game_status value matches 1 as @a if score @s death_count matches 1.. run team join spectator @s
execute if score game_status value matches 1 as @a if score @s death_count matches 1.. run scoreboard players set @s death_count 0

execute if score game_status value matches 1 as @e[type=!minecraft:armor_stand,type=!minecraft:marker,type=!minecraft:player] at @s if block ~ ~-1 ~ #floorisair:death_block run kill @s