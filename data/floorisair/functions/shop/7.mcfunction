execute if score all_items value matches 1 run tellraw @s ["",{"text":"[商店]","color":"gold","bold":true}," 所有道具已啟用，您無法從商店購買道具。"]
execute if score all_items value matches 0 if score @s Item7_status matches 1 run tellraw @s ["",{"text":"[商店]","color":"gold","bold":true}," 您已擁有此道具。"]
execute if score all_items value matches 0 unless score @s Item7_status matches 1 if score @s fiacoin matches ..59 run tellraw @s ["",{"text":"[商店]","color":"gold","bold":true}," 你沒有足夠的 FIA 金幣。"]
execute if score all_items value matches 0 unless score @s Item7_status matches 1 unless score @s fiacoin matches ..59 run tag @s add Item7_buyed
scoreboard players set @s[tag=Item7_buyed] Item7_status 1
scoreboard players remove @s[tag=Item7_buyed] fiacoin 60
tellraw @s[tag=Item7_buyed] ["",{"text":"[商店]","color":"gold","bold":true}," 購買成功。您現在有 $",{"score":{"name":"@s","objective":"fiacoin"}}," FIA 金幣。"]
tag @s[tag=Item7_buyed] remove Item7_buyed