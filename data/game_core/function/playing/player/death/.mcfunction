#> game_core:playing/player/death/
#
# 死亡処理
#
# @within function game_core:playing/player/

# アイテムのクリア
    clear @s bow
    clear @s *[custom_data={inv_ban:1b}]

# シュルカーボックスの設置
    function game_core:playing/player/death/set_shulker_box

# 蘇生用の表示召喚
    function game_core:playing/player/death/summon_head

# アイテムのコピー
    data modify block ~ ~ ~ Items set from entity @s Inventory

# タグの削除
    tag @s remove alive

# ゲームモード変更
    gamemode spectator @s