execute if score game_status value matches 1 if score ingame_player_count value matches 1 run clear @a
execute if score game_status value matches 1 if score ingame_player_count value matches 1 run kill @e[type=minecraft:item]

execute if score game_status value matches 1 if score ingame_player_count value matches ..1 as @a[team=player] run tag @s add winner

execute if score game_status value matches 1 if score ingame_player_count value matches ..1 run scoreboard players add @a[tag=winner] fiacoin 100
execute if score game_status value matches 1 if score ingame_player_count value matches ..1 run scoreboard players add @a[tag=!winner] fiacoin 35

# 結束訊息
execute if score game_status value matches 1 if score ingame_player_count value matches 0..1 run tellraw @a ["\n",{"text":"[遊戲]","color":"green","bold":true}," 遊戲結束！","\n"]

execute if score game_status value matches 1 if score ingame_player_count value matches 0 run tellraw @a ["",{"text":"[遊戲]","color":"green","bold":true}," 無人生還，不可思議！","\n"]
execute if score game_status value matches 1 if score ingame_player_count value matches 1 run tellraw @a[tag=winner] ["",{"text":"[遊戲]","color":"green","bold":true}," 恭喜勝利！","\n"]
execute if score game_status value matches 1 if score ingame_player_count value matches 1 run tellraw @a[tag=!winner] ["",{"text":"[遊戲]","color":"green","bold":true}," 勝利者：",{"selector":"@a[tag=winner]"},"\n"]

execute if score game_status value matches 1 if score ingame_player_count value matches 0 run tellraw @a ["",{"text":"[遊戲]","color":"green","bold":true}," 您獲得了 35 FIA 金幣。","\n"]
execute if score game_status value matches 1 if score ingame_player_count value matches 1 run tellraw @a[tag=!winner] ["",{"text":"[遊戲]","color":"green","bold":true}," 您獲得了 35 FIA 金幣。","\n"]
execute if score game_status value matches 1 if score ingame_player_count value matches 1 run tellraw @a[tag=winner] ["",{"text":"[遊戲]","color":"green","bold":true}," 您獲得了 100 FIA 金幣。","\n"]

execute if score game_status value matches 1 if score ingame_player_count value matches 0..1 run tellraw @a {"text":"[重置遊戲]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger reset"},"hoverEvent":{"action":"show_text","contents":[{"text":"重置遊戲，需要 /trigger 指令使用權限。","color":"red"}]}}

# 結束標題
execute if score game_status value matches 1 if score ingame_player_count value matches 1 run title @a title {"selector":"@a[tag=winner]","color":"gold","bold":true}
execute if score game_status value matches 1 if score ingame_player_count value matches 1 run title @a subtitle "勝利，遊戲結束！"
execute if score game_status value matches 1 if score ingame_player_count value matches 0 run title @a title "不可思議！"
execute if score game_status value matches 1 if score ingame_player_count value matches 0 run title @a subtitle "無人生還，遊戲結束！"

execute if score game_status value matches 1 if score ingame_player_count value matches ..1 run scoreboard players set game_status value 2