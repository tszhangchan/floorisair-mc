# 緊急重置
scoreboard players enable @a reset
execute as @a unless score @s reset matches -2147483647..2147483647 run scoreboard players set @s reset 0
execute as @a unless score @s reset matches 0 run function floorisair:game/reset
execute as @a unless score @s reset matches 0 run scoreboard players set @s reset 0

# 重置提示
execute if score game_status value matches 2 run title @a actionbar ["",{"translate":"floorisair.text.emergency_reset_tips","fallback":"%s If there are any unexpected accidents, or Reset Game option disappear after the game ends, please use ","with":[{"translate":"floorisair.title.tips","fallback":"[Tips]","color":"yellow","bold":true}]},{"translate":"floorisair.text.emergency_reset_command","fallback":"Emergency Reset Command","color":"red","bold":true},{"translate":"floorisair.punctuation.colon","fallback":": "},{"text":"/trigger reset","color":"green","underline":"true","clickEvent":{"action":"run_command","value":"/trigger reset"},"hoverEvent":{"action":"show_text","value":[{"translate":"floorisair.text.hover.try_emergency_reset","fallback":"Click to try emergency reset command; which requires the permission of using /trigger command.","color":"red"}]}},"。"]