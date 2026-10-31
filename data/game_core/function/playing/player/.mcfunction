#> game_core:playing/player/
#
# ゲーム中のプレイヤーのtick処理
#
# @within function game_core:playing/

# 初回参加処理
    execute if score @s First_Login matches 1 run function game_core:playing/player/first_login

# 再参加処理
    execute if score @s LeaveCount matches 1.. run function game_core:playing/player/relogin

# インベントリの制限
    clear @s *[custom_data={inv_ban:true}]
    loot replace entity @s inventory.9 loot game_core:inv_ban/0
    execute if score @s Player.Backpack_Level matches 1..2 run loot replace entity @s inventory.3 loot game_core:inv_ban/1
    execute if score @s Player.Backpack_Level matches 1..3 run loot replace entity @s inventory.6 loot game_core:inv_ban/1