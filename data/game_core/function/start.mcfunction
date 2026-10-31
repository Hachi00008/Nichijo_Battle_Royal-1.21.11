#> game_core:start
#
# ゲームの開始処理

# マップの中央が設定されてないなら開始不可
    execute unless entity @e[tag=Map_Center] run tellraw @s ["",{storage:"global:",nbt:Prefix.error,interpret:true},{text:"マップの中心が設定されていないため開始できませんでした。"}]
    execute unless entity @e[tag=Map_Center] run playsound entity.villager.no ui @s ~ ~ ~ 1.0 1.0
    execute unless entity @e[tag=Map_Center] run return fail

# チーム戦ならチームに割り当てられてない人がいたら開始不可
    execute if entity @a[team=] run tellraw @s ["",{storage:"global:",nbt:Prefix.error,interpret:true},{text:"チームに割り当てられてない人がいるため開始できませんでした。"}]
    execute if entity @a[team=] run playsound entity.villager.no ui @s ~ ~ ~ 1.0 1.0
    execute if entity @a[team=] run return fail

# ストレージの変更(開始前)
    data modify storage nichi: game_state.status set value switch_playing

# tp
    execute if entity @e[tag=Extension_Map_Center] run function game_core:switch_phase/teleport/extension

# 強制停止
    data modify storage nichi: game_state.status set value staying