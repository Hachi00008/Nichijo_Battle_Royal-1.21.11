#> game_core:switch_phase/teleport/extension
#
# 拡張マップにtp
#
# @within function game_core:start

# 前回の残りをリセット(途中で止まった時の対策)
    tag @e[type=armor_stand,tag=Extension_Used] remove Extension_Used
    tag @e[type=armor_stand,tag=temp_select_map] remove temp_select_map
    tag @a remove select_extension_map
    tag @a remove temp_select_spawn
    tag @a remove temp_tp

# チームを拡張区にtp
    function game_core:switch_phase/teleport/extension_team_tp

# 拡張区が足りなくて配置できなかったプレイヤーがいる場合は警告
    execute if entity @a[team=!Spectate,tag=!select_extension_map] run tellraw @s ["",{storage:"global:",nbt:Prefix.error,interpret:true},{text:"拡張マップの数がチーム数より少ないため、配置されなかったプレイヤーがいます。"}]

# リセット
    tag @e[type=armor_stand,tag=Extension_Used] remove Extension_Used
    tag @a remove select_extension_map
