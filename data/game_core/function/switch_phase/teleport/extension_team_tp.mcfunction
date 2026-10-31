#> game_core:switch_phase/teleport/extension_team_tp
#
# チームごとに拡張マップへtp(1回の実行で1チーム)
#
# @within function
#   game_core:switch_phase/teleport/extension
#   game_core:switch_phase/teleport/extension_team_tp

# 抽選: 未配置のプレイヤー1人 と 未使用の拡張マップ1つ をランダムに選ぶ
    tag @r[team=!Spectate,tag=!select_extension_map] add temp_select_spawn
    tag @e[type=armor_stand,tag=Extension_Map_Center,tag=!Extension_Used,sort=random,limit=1] add temp_select_map

# 選ばれたプレイヤーと同じチーム(Team_IDが同じ)のプレイヤーを集める
# ※位置での比較はやめて、スコアに控えてから比較する
    tag @a[tag=temp_select_spawn] add temp_tp
    scoreboard players reset $Select_Team Temporary
    execute as @a[tag=temp_select_spawn] run scoreboard players operation $Select_Team Temporary = @s Team_ID
    execute if score $Select_Team Temporary matches -2147483648..2147483647 as @a[team=!Spectate,tag=!select_extension_map] if score @s Team_ID = $Select_Team Temporary run tag @s add temp_tp

# テレポート処理(まず拡張マップの中心へ集めてから散らす)
    execute at @e[type=armor_stand,tag=temp_select_map] run tp @a[tag=temp_tp] ~ ~ ~
    execute at @e[type=armor_stand,tag=temp_select_map] run spreadplayers ~ ~ 10 20 false @a[tag=temp_tp]

# デバッグ表示
    tellraw @a ["",{storage:"global:",nbt:Prefix.debug,interpret:true},{selector:"@a[tag=temp_tp]"},{text:" → 拡張マップID "},{score:{name:"@e[type=armor_stand,tag=temp_select_map,limit=1]",objective:"Extension_Map_ID"}}]

# 配置済みにする
    tag @a[tag=temp_tp] add select_extension_map
    tag @e[type=armor_stand,tag=temp_select_map] add Extension_Used

# リセット
    tag @a remove temp_select_spawn
    tag @a remove temp_tp
    tag @e[type=armor_stand,tag=temp_select_map] remove temp_select_map

# 未配置のプレイヤーと未使用の拡張マップが両方残っているなら再帰
    execute if entity @a[team=!Spectate,tag=!select_extension_map] if entity @e[type=armor_stand,tag=Extension_Map_Center,tag=!Extension_Used] run function game_core:switch_phase/teleport/extension_team_tp
