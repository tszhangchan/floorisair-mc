scoreboard players set floor_texture value 2
execute if score floor_texture value matches 2 as @e[tag=block_fixes,tag=general,type=minecraft:marker] at @s run fill ~ ~-1 ~ ~-32 ~-1 ~-32 minecraft:light_gray_stained_glass
fill 984 71 984 1016 74 1016 minecraft:light_gray_stained_glass replace #floorisair:floor_gray
function floorisair:appearance_settings/menu