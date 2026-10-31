#> game_core:set_map/set_id
#
# 拡張マップのid付与
#
# @within function game_core:set_map/extension_map_center

# スコアを付与
    execute store result score @s Extension_Map_ID run scoreboard players add $world Extension_Map_ID 1

# 強制読み込み
    forceload add ~30 ~30 ~-30 ~-30