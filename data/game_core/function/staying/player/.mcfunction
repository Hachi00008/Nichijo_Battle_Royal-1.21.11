#> game_core:staying/player/
#
# プレイヤーごとのtick処理(待機中)
#
# @within function game_core:staying/

# 初回ログイン
    execute if score @s First_Login matches 1 run function game_core:staying/player/first_login

# 2回目以降のログイン
    execute if score @s LeaveCount matches 1.. run function game_core:staying/player/relogin

# チームわけ
    execute if data storage nichi: game_state{mode:team} if block ~ ~-1 ~ #libs:team_change_block unless entity @s[tag=change_lock] run function game_core:staying/player/team_change/
    execute unless block ~ ~-1 ~ #libs:team_change_block run tag @s remove change_lock