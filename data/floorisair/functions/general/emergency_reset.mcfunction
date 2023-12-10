# 緊急重置
scoreboard players enable @a reset
execute as @a unless score @s reset matches -2147483647..2147483647 run scoreboard players set @s reset 0
execute as @a unless score @s reset matches 0 run function floorisair:game/reset
execute as @a unless score @s reset matches 0 run scoreboard players set @s reset 0

# 重置提示
execute if score game_status value matches 2 run title @a actionbar ["",{"text":"[提示]","color":"yellow","bold":true}," 如果遊戲結束後「重置遊戲」選項消失， 請使用",{"text":"緊急重設指令","color":"red","bold":true},"： ",{"text":"/trigger reset","color":"green"},"。"]