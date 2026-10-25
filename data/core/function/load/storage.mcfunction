#> core:load/storage
#
# ストレージの読み込み
#
# @within function core:load/once

# ストレージの処理
# ゲームデータの読み込み
    execute unless data storage nichi: game_state.status run data modify storage nichi: game_state.status set value "staying"
    execute unless data storage nichi: game_state.mode run data modify storage nichi: game_state.mode set value "solo"

# 読み込み完了時のメッセージ
    tellraw @a ["",{storage:"global:",nbt:Prefix.info,interpret:true},{text:"ストレージの読み込み完了"}]