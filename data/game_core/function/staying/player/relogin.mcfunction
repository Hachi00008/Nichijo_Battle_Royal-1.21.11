#> game_core:staying/player/relogin
#
# 2回目以降の参加処理
#
# @within function game_core:staying/player/

# チームからの脱退
    team leave @s
    item replace entity @s armor.chest with air
    scoreboard players reset @s Team_ID

# リセット
    scoreboard players reset @s LeaveCount