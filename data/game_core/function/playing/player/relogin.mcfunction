#> game_core:playing/player/relogin
#
# 再参加処理
#
# @within funciton game_core:playing/player/

# 参加フラグが立っていないならチーム変更
    execute unless score @s PlayingFlag matches -2147483648..2147483647 run team join Spectate @s
    execute unless score @s PlayingFlag matches -2147483648..2147483647 run tellraw @s ["",{text:"前の試合とは別の試合のため観戦者となりました",color:"red"}]