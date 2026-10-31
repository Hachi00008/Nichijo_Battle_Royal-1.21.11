#> game_core:staying/player/team_change/spectate
#
# 観戦に切り替え
#
# @within function game_core:staying/player/team_change/

# チーム参加
    team join Spectate @s

# スコア削除
    scoreboard players reset @s Team_ID

# 