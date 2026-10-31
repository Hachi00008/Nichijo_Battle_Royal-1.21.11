#> game_core:playing/player/death/set_shulker_box
#
# シュルカーボックスの設置
#
# @within function game_core:playing/player/death/

# チームごとに色の変更
    execute if entity @s[team=Team_Aqua] run setblock ~ ~ ~ light_blue_shulker_box

    execute if entity @s[team=Team_Black] run setblock ~ ~ ~ black_shulker_box
    
    execute if entity @s[team=Team_Blue] run setblock ~ ~ ~ blue_shulker_box

    execute if entity @s[team=Team_Green] run setblock ~ ~ ~ green_shulker_box

    execute if entity @s[team=Team_Orange] run setblock ~ ~ ~ orange_shulker_box
    
    execute if entity @s[team=Team_Purple] run setblock ~ ~ ~ purple_shulker_box
    
    execute if entity @s[team=Team_Red] run setblock ~ ~ ~ red_shulker_box

    execute if entity @s[team=Team_White] run setblock ~ ~ ~ white_shulker_box

    execute if entity @s[team=Team_Yellow] run setblock ~ ~ ~ yellow_shulker_box