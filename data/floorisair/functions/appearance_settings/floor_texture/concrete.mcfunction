scoreboard players set floor_texture value 1
execute if score floor_texture value matches 1 as @e[tag=block_fixes,tag=general,type=minecraft:marker] at @s run fill ~ ~-1 ~ ~-32 ~-1 ~-32 minecraft:light_gray_concrete
fill 984 71 984 1016 74 1016 minecraft:light_gray_concrete replace #floorisair:floor_gray
function floorisair:appearance_settings/menu