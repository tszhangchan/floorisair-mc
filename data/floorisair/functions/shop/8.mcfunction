execute if score all_items value matches 1 run tellraw @s ["",{"translate":"floorisair.text.shop.all_items_on","fallback":"%s All items are enabled, so you can't buy items from the shop.","with":[{"translate":"floorisair.title.shop","fallback":"[Shop]","color":"gold","bold":true}]}]
execute if score all_items value matches 0 if score @s Item8_status matches 1 run tellraw @s ["",{"translate":"floorisair.text.shop.item_owned","fallback":"%s You have already owned this item.","with":[{"translate":"floorisair.title.shop","fallback":"[Shop]","color":"gold","bold":true}]}]

execute if score all_items value matches 0 unless score @s Item8_status matches 1 if score @s fiacoin matches ..74 run tellraw @s ["",{"translate":"floorisair.text.shop.buy_fail","fallback":"%s You don't have enough FIA coin.","with":[{"translate":"floorisair.title.shop","fallback":"[Shop]","color":"gold","bold":true}]}]
execute if score all_items value matches 0 unless score @s Item8_status matches 1 unless score @s fiacoin matches ..74 run tag @s add Item8_buyed
scoreboard players set @s[tag=Item8_buyed] Item8_status 1
scoreboard players remove @s[tag=Item8_buyed] fiacoin 75
tellraw @s[tag=Item8_buyed] ["",{"translate":"floorisair.text.shop.buy_success","fallback":"%s Purchase succeeded. You now have %s FIA coin.","with":[{"translate":"floorisair.title.shop","fallback":"[Shop]","color":"gold","bold":true},{"score":{"name":"@s","objective":"fiacoin"}}]}]
tag @s[tag=Item8_buyed] remove Item8_buyed