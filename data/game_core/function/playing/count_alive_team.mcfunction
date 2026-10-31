#> game_core:playing/count_alive_team
#
# 生存しているチーム数をカウント
#
# @within function game_core:playing/

# スコアリセット
    scoreboard players set $Alive_Team Global 0

# アクアチーム
    execute if entity @a[team=Team_Aqua,tag=alive] run scoreboard players add $Alive_Team Global 1

# ブラックチーム
    execute if entity @a[team=Team_Black,tag=alive] run scoreboard players add $Alive_Team Global 1

# ブルーチーム
    execute if entity @a[team=Team_Blue,tag=alive] run scoreboard players add $Alive_Team Global 1

# グリーンチーム
    execute if entity @a[team=Team_Green,tag=alive] run scoreboard players add $Alive_Team Global 1

# オレンジチーム
    execute if entity @a[team=Team_Orange,tag=alive] run scoreboard players add $Alive_Team Global 1

# パープルチーム
    execute if entity @a[team=Team_Purple,tag=alive] run scoreboard players add $Alive_Team Global 1

# レッドチーム
    execute if entity @a[team=Team_Red,tag=alive] run scoreboard players add $Alive_Team Global 1

# ホワイトチーム
    execute if entity @a[team=Team_White,tag=alive] run scoreboard players add $Alive_Team Global 1

# イエローチーム
    execute if entity @a[team=Team_Yellow,tag=alive] run scoreboard players add $Alive_Team Global 1