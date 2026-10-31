#> game_core:playing/player/first_login
#
# 初回ログイン処理
#
# @within funciton game_core:playing/player/

# プレイヤーID
    execute store result score @s Player_ID run scoreboard players add $world Player_ID 1

# 観戦モード
    gamemode spectator @s
    team join Spectate @s

# メッセージ
    tellraw @s ["",{text:"ゲームが進行中のため、観戦者になりました",color:"red"}]