#> game_core:playing/time_change/normal
#
# 縮小時間に切り替え
#
# @within function game_core:playing/

# ボーダーの変更
    data modify storage nichi: game_state.border_mode set value normal

# スコアの設定
    scoreboard players add $Phase Global 1
    scoreboard players operation $NowTime Timer = $Max_Normal_Time.tick Timer

# ボスバー
    execute if data storage nichi: game_state{mode:solo} store result bossbar nichi:solo_timer max run scoreboard players get $Max_Normal_Time.tick Timer
    execute if data storage nichi: game_state{mode:solo} run bossbar set nichi:solo_timer color blue

    execute if data storage nichi: game_state{mode:team} store result bossbar nichi:multi_timer max run scoreboard players get $Max_Normal_Time.tick Timer
    execute if data storage nichi: game_state{mode:team} run bossbar set nichi:multi_timer color blue
