#> game_core:staying/player/first_login
#
# 初回ログイン時の処理
#
# @within function game_core:staying/player/

# プレイヤーID
    execute store result score @s Player_ID run scoreboard players add $world Player_ID 1