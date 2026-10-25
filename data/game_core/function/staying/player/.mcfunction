#> game_core:staying/player/
#
# プレイヤーごとのtick処理(待機中)
#
# @within function game_core:staying/

# チームわけ
    execute if data storage nichi: game_state{mode:"team"} run function game_core:staying/player/team_change/