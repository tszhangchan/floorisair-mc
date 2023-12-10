execute if score all_items value matches 1 run tellraw @s ["",{"text":"[商店]","color":"gold","bold":true}," 所有道具已啟用，您無法從商店購買道具。"]
execute if score all_items value matches 0 if score random_event_status value matches 0 run tellraw @s ["",{"text":"[商店]","color":"gold","bold":true}," 隨機事件尚未啟用，您無法從商店購買此道具。"]
execute if score all_items value matches 0 if score random_event_status value matches 1..2 if score @s Item5_status matches 1 run tellraw @s ["",{"text":"[商店]","color":"gold","bold":true}," 您已擁有此道具。"]
execute if score all_items value matches 0 if score random_event_status value matches 1..2 unless score @s Item5_status matches 1 if score @s fiacoin matches ..29 run tellraw @s ["",{"text":"[商店]","color":"gold","bold":true}," 你沒有足夠的 FIA 金幣。"]
execute if score all_items value matches 0 if score random_event_status value matches 1..2 unless score @s Item5_status matches 1 unless score @s fiacoin matches ..29 run tag @s add Item5_buyed
scoreboard players set @s[tag=Item5_buyed] Item5_status 1
scoreboard players remove @s[tag=Item5_buyed] fiacoin 30
tellraw @s[tag=Item5_buyed] ["",{"text":"[商店]","color":"gold","bold":true}," 購買成功。您現在有 $",{"score":{"name":"@s","objective":"fiacoin"}}," FIA 金幣。"]
tag @s[tag=Item5_buyed] remove Item5_buyed