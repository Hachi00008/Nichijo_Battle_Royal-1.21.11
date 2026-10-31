#> game_core:playing/
#
# ゲーム中のtick処理
#
# @within function core:tick/

# プレイヤーの処理
    execute as @a at @s run function game_core:playing/player/

# スコアの減少
    scoreboard players remove $NowTime Timer 1

# ボスバーに代入
    execute if data storage nichi: game_state{mode:"solo"} store result bossbar nichi:solo_timer value run scoreboard players get $NowTime Timer
    execute if data storage nichi: game_state{mode:"team"} store result bossbar nichi:multi_timer value run scoreboard players get $NowTime Timer

# ボスバーの名前を変更
    execute store result score $Alive_Player Global if entity @a[tag=alive]
    execute if data storage nichi: game_state{mode:"solo"} run bossbar set nichi:solo_timer name ["",{text:"プレイヤー:",bold:true},{score:{name:"$Alive_Player",objective:"Global"},bold:true}]
    execute if data storage nichi: game_state{mode:"solo"} run bossbar set nichi:multi_timer visible false
    execute if data storage nichi: game_state{mode:"solo"} run bossbar set nichi:solo_timer visible true
    
    execute if data storage nichi: game_state{mode:"team"} run function game_core:playing/count_alive_team
    execute if data storage nichi: game_state{mode:"team"} run bossbar set nichi:multi_timer name ["",{text:"チーム:",bold:true},{score:{name:"$Alive_Team",objective:"Global"},bold:true},{text:" プレイヤー:",bold:true},{score:{name:"$Alive_Player",objective:Global},bold:true}]
    execute if data storage nichi: game_state{mode:"team"} run bossbar set nichi:solo_timer visible false
    execute if data storage nichi: game_state{mode:"team"} run bossbar set nichi:multi_timer visible true

# 時間がゼロになった時の処理
    execute if score $NowTime Timer matches ..0 if data storage nichi: game_state{border_mode:"normal"} unless score $Phase Global matches 5.. run function game_core:playing/time_change/reduction
    execute if score $NowTime Timer matches ..0 if data storage nichi: game_state{border_mode:"normal"} if score $Phase Global matches 5.. run function game_core:playing/time_change/normal
    execute if score $NowTime Timer matches ..0 if data storage nichi: game_state{border_mode:"reduction"} run function game_core:playing/time_change/normal