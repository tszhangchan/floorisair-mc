function floorisair:appearance_settings/theme/quartz
function floorisair:appearance_settings/floor_texture/wool
function floorisair:appearance_settings/dead_block/magma_block
function floorisair:gameplay_settings/all_items_off
function floorisair:gameplay_settings/items_cd_on
function floorisair:gameplay_settings/random_event_show
scoreboard players reset @a
function floorisair:game/reset
tellraw @a ["",{"text":"[遊戲]","color":"green","bold":true}," 地板是空氣！所有選項及玩家所有物已全部重置，祝您遊戲愉快！"]