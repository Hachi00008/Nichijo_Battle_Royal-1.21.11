#> game_core:staying/player/team_change/
#
# チーム変更処理
#
# @within function game_core:staying/player/

# アクアチーム
    execute if block ~ ~-1 ~ light_blue_wool run function game_core:staying/player/team_change/aqua

# ブラックチーム
    execute if block ~ ~-1 ~ black_wool run function game_core:staying/player/team_change/black

# ブルーチーム
    execute if block ~ ~-1 ~ blue_wool run function game_core:staying/player/team_change/blue

# グリーンチーム
    execute if block ~ ~-1 ~ green_wool run function game_core:staying/player/team_change/green

# オレンジチーム
    execute if block ~ ~-1 ~ orange_wool run function game_core:staying/player/team_change/orange

# パープルチーム
    execute if block ~ ~-1 ~ purple_wool run function game_core:staying/player/team_change/purple

# レッドチーム
    execute if block ~ ~-1 ~ red_wool run function game_core:staying/player/team_change/red

# ホワイトチーム
    execute if block ~ ~-1 ~ white_wool run function game_core:staying/player/team_change/white

# イエローチーム
    execute if block ~ ~-1 ~ yellow_wool run function game_core:staying/player/team_change/yellow

# 観戦
    execute if block ~ ~-1 ~ gray_wool run function game_core:staying/player/team_change/spectate

# リセット
    scoreboard players reset $Team_Player Temporary