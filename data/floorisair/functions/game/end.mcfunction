execute if score game_status value matches 1 if score ingame_player_count value matches 1 run clear @a
execute if score game_status value matches 1 if score ingame_player_count value matches 1 run kill @e[type=minecraft:item]

execute if score game_status value matches 1 if score ingame_player_count value matches ..1 as @a[team=player] run tag @s add winner

execute if score game_status value matches 1 if score ingame_player_count value matches ..1 run scoreboard players add @a[tag=winner] fiacoin 100
execute if score game_status value matches 1 if score ingame_player_count value matches ..1 run scoreboard players add @a[tag=!winner] fiacoin 35

# 結束訊息
execute if score game_status value matches 1 if score ingame_player_count value matches 0..1 run tellraw @a ["\n",{"translate":"floorisair.text.end.game_end","fallback":"%s Game End!","with":[{"translate":"floorisair.title.game","fallback":"[Game]","color":"green","bold":true}]},"\n"]

execute if score game_status value matches 1 if score ingame_player_count value matches 0 run tellraw @a ["",{"translate":"floorisair.text.end.no_player","fallback":"%s No one survived at last, incredible!","with":[{"translate":"floorisair.title.game","fallback":"[Game]","color":"green","bold":true}]},"\n"]
execute if score game_status value matches 1 if score ingame_player_count value matches 1 run tellraw @a[tag=winner] ["",{"translate":"floorisair.text.end.winner","fallback":"%s Congratulations!","with":[{"translate":"floorisair.title.game","fallback":"[Game]","color":"green","bold":true}]},"\n"]
execute if score game_status value matches 1 if score ingame_player_count value matches 1 run tellraw @a[tag=!winner] ["",{"translate":"floorisair.text.end.non_winner","fallback":"%s Winner: %s","with":[{"translate":"floorisair.title.game","fallback":"[Game]","color":"green","bold":true},{"selector":"@a[tag=winner]]"}]},"\n"]

execute if score game_status value matches 1 if score ingame_player_count value matches 0 run tellraw @a ["",{"translate":"floorisair.text.end.fiacoin","fallback":"%s You earn %s FIA coin.","with":[{"translate":"floorisair.title.game","fallback":"[Game]","color":"green","bold":true},"35"]},"\n"]
execute if score game_status value matches 1 if score ingame_player_count value matches 1 run tellraw @a[tag=!winner] ["",{"translate":"floorisair.text.end.fiacoin","fallback":"%s You earn %s FIA coin.","with":[{"translate":"floorisair.title.game","fallback":"[Game]","color":"green","bold":true},"35"]},"\n"]
execute if score game_status value matches 1 if score ingame_player_count value matches 1 run tellraw @a[tag=winner] ["",{"translate":"floorisair.text.end.fiacoin","fallback":"%s You earn %s FIA coin.","with":[{"translate":"floorisair.title.game","fallback":"[Game]","color":"green","bold":true},"100"]},"\n"]

execute if score game_status value matches 1 if score ingame_player_count value matches 0..1 run tellraw @a {"translate":"floorisair.text.end.reset","fallback":"[Reset Game]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger reset"},"hoverEvent":{"action":"show_text","contents":[{"translate":"floorisair.text.end.hover.reset","fallback":"Reset game; which requires the permission of using /trigger command.","color":"red"}]}}

# 結束標題
execute if score game_status value matches 1 if score ingame_player_count value matches 1 run title @a title {"selector":"@a[tag=winner]","color":"gold","bold":true}
execute if score game_status value matches 1 if score ingame_player_count value matches 1 run title @a subtitle {"translate":"floorisair.text.end.winner_subtitle","fallback":"has won, game ends!"}
execute if score game_status value matches 1 if score ingame_player_count value matches 0 run title @a title {"translate":"floorisair.text.end.no_winner_title","fallback":"Incredible!"}
execute if score game_status value matches 1 if score ingame_player_count value matches 0 run title @a subtitle {"translate":"floorisair.text.end.no_winner_subtitle","fallback":"No one survived at last. Game ends!"}

execute if score game_status value matches 1 if score ingame_player_count value matches ..1 run scoreboard players set game_status value 2