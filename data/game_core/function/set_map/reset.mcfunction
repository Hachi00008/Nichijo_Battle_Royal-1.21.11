#> game_core:set_map/reset
#
# マップをリセット

# 読み込み地点の削除
    forceload remove all
    execute in world:system_area run forceload add -1 -1 0 0

# アマスタの削除
    kill @e[tag=Extension_Map_Center]

# スコアリセット
    scoreboard players reset * Extension_Map_ID

# メッセージ
    tellraw @a ["",{storage:"global:",nbt:Prefix.info,interpret:true},{text:"拡張区をリセットしました"}]