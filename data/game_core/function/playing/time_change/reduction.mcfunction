#> game_core:playing/time_change/reduction
#
# 縮小時間に切り替え
#
# @within function game_core:playing/

# スコアの設定
    scoreboard players operation $NowTime Timer = $Max_Reduction_Time.tick Timer

# ボーダーの変更
    data modify storage nichi: game_state.border_mode set value reduction

# ボスバー
    execute if data storage nichi: game_state{mode:solo} store result bossbar nichi:solo_timer max run scoreboard players get $Max_Reduction_Time.tick Timer
    execute if data storage nichi: game_state{mode:solo} run bossbar set nichi:solo_timer color red

    execute if data storage nichi: game_state{mode:team} store result bossbar nichi:multi_timer max run scoreboard players get $Max_Reduction_Time.tick Timer
    execute if data storage nichi: game_state{mode:team} run bossbar set nichi:multi_timer color red

# ボーダーの縮小
    execute store result storage nichi:temp reduction_tick int 1 run scoreboard players get $Max_Reduction_Time.tick Timer
    execute unless score $Phase Global matches 5.. run function game_core:playing/time_change/border_reduction with storage nichi:temp
    data remove storage nichi:temp reduction_tick

# メッセージ
    tellraw @a ["",{text:"エリアの縮小開始!!",color:"red"}]