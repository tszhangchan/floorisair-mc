tellraw @s ["\n","\n","\n","\n","\n","\n","\n","\n","\n"]

tellraw @s ["\n",{"text":"--- 遊戲內容、道具選項 ---","bold":true},"\n","此處所有選項需要 /function 指令使用權限。","\n","\n",{"text":"[給予、更改或扣除 FIA 金幣]","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function floorisair:gameplay_settings/give_fiacoin"},"hoverEvent":{"action":"show_text","contents":[{"text":"給予、更改或扣除自己、特定玩家或所有玩家特定數量的 FIA 金幣，需要 /function 指令使用權限。","color":"red"}]}}]

# 全部道具：停用
execute if score all_items value matches 0 run tellraw @s ["","全部道具 ",{"text":"[停用]","bold":true,"underlined":true,"color":"red"}," ",{"text":"[啟用]","color":"gray","clickEvent":{"action":"run_command","value":"/function floorisair:gameplay_settings/all_items_on"},"hoverEvent":{"action":"show_text","contents":[{"text":"啟用後，您將不須購買道具，即可使用所有道具；需要 /function 指令使用權限。","color":"red"}]}}]

# 全部道具：啟用
execute if score all_items value matches 1 run tellraw @s ["","全部道具 ",{"text":"[停用]","color":"gray","clickEvent":{"action":"run_command","value":"/function floorisair:gameplay_settings/all_items_off"},"hoverEvent":{"action":"show_text","contents":[{"text":"停用後，您將需要購買道具，才可以使用它們；需要 /function 指令使用權限。","color":"red"}]}}," ",{"text":"[啟用]","bold":true,"underlined":true,"color":"green"}]

# 道具冷卻：停用
execute if score items_cd value matches 0 run tellraw @s ["","道具冷卻 ",{"text":"[停用]","bold":true,"underlined":true,"color":"red"}," ",{"text":"[啟用]","color":"gray","clickEvent":{"action":"run_command","value":"/function floorisair:gameplay_settings/items_cd_on"},"hoverEvent":{"action":"show_text","contents":[{"text":"啟用道具冷卻，需要 /function 指令使用權限。","color":"red"}]}}]

# 道具冷卻：啟用
execute if score items_cd value matches 1 run tellraw @s ["","道具冷卻 ",{"text":"[停用]","color":"gray","clickEvent":{"action":"run_command","value":"/function floorisair:gameplay_settings/items_cd_off"},"hoverEvent":{"action":"show_text","contents":[{"text":"停用道具冷卻將僅適用於超級雪球、TNT 及終界水晶，需要 /function 指令使用權限。","color":"red"}]}}," ",{"text":"[啟用]","bold":true,"underlined":true,"color":"green"}]

# 隨機事件：停用
execute if score random_event_status value matches 0 run tellraw @s ["","隨機事件 ",{"text":"[停用]","bold":true,"color":"red"}," ",{"text":"[不顯示進度條]","color":"gray","clickEvent":{"action":"run_command","value":"/function floorisair:gameplay_settings/random_event_bar_off"},"hoverEvent":{"action":"show_text","contents":[{"text":"啟用隨機事件但不顯示進度條，需要 /function 指令使用權限。","color":"red"}]}}," ",{"text":"[顯示進度條]","color":"gray","clickEvent":{"action":"run_command","value":"/function floorisair:gameplay_settings/random_event_bar_on"},"hoverEvent":{"action":"show_text","contents":[{"text":"啟用隨機事件並顯示進度條，需要 /function 指令使用權限。","color":"red"}]}}]

# 隨機事件：不顯示進度條
execute if score random_event_status value matches 2 run tellraw @s ["","隨機事件 ",{"text":"[停用]","color":"gray","clickEvent":{"action":"run_command","value":"/function floorisair:gameplay_settings/random_event_off"},"hoverEvent":{"action":"show_text","contents":[{"text":"停用隨機事件，需要 /function 指令使用權限。","color":"red"}]}}," ",{"text":"[不顯示進度條]","bold":true,"color":"gold"}," ",{"text":"[顯示進度條]","color":"gray","clickEvent":{"action":"run_command","value":"/function floorisair:gameplay_settings/random_event_bar_on"},"hoverEvent":{"action":"show_text","contents":[{"text":"啟用隨機事件並顯示進度條，需要 /function 指令使用權限。","color":"red"}]}}]

# 隨機事件：顯示進度條
execute if score random_event_status value matches 1 run tellraw @s ["","隨機事件 ",{"text":"[停用]","color":"gray","clickEvent":{"action":"run_command","value":"/function floorisair:gameplay_settings/random_event_off"},"hoverEvent":{"action":"show_text","contents":[{"text":"停用隨機事件，需要 /function 指令使用權限。","color":"red"}]}}," ",{"text":"[不顯示進度條]","color":"gray","clickEvent":{"action":"run_command","value":"/function floorisair:gameplay_settings/random_event_bar_off"},"hoverEvent":{"action":"show_text","contents":[{"text":"啟用隨機事件但不顯示進度條，需要 /function 指令使用權限。","color":"red"}]}}," ",{"text":"[顯示進度條]","bold":true,"color":"green"}]

# 重置所有選項及玩家所有物
tellraw @s ["",{"text":"[重置所有選項及玩家所有物]","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/function floorisair:gameplay_settings/reset_all"},"hoverEvent":{"action":"show_text","contents":[{"text":"重置所有選項及玩家所有物，需要 /function 指令使用權限。","color":"red"}]}},"\n"]

playsound minecraft:block.dispenser.fail voice @s 0 100 0 2147483647 1 1