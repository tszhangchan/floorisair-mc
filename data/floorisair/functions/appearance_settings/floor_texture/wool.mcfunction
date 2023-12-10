scoreboard players set floor_texture value 0
execute if score floor_texture value matches 0 as @e[tag=block_fixes,tag=general,type=minecraft:marker] at @s run fill ~ ~-1 ~ ~-32 ~-1 ~-32 minecraft:light_gray_wool
fill 984 71 984 1016 74 1016 minecraft:light_gray_wool replace #floorisair:floor_gray
function floorisair:appearance_settings/menu