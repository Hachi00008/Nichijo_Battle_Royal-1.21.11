#> game_core:change_mode/team
#
# ゲームモードを「チーム」に変更

# 待機中のみ実行可能
    execute unless data storage nichi: game_state{status:staying} run tellraw @s ["",{storage:"global:",nbt:Prefix.error,interpret:true},{text:"ゲーム状態が待機中でないため変更できませんでした"}]
    execute unless data storage nichi: game_state{status:staying} run playsound block.note_block.bass ui @s ~ ~ ~ 1.0 1.0
    execute unless data storage nichi: game_state{status:staying} run return fail

# ストレージの変更
    data modify storage nichi: game_state.mode set value team

# メッセージ
    tellraw @a ["",{text:"ゲームモードを"},{text:"チーム",bold:true},{text:"に変更しました"}]

# 音
    execute as @a at @s run playsound entity.experience_orb.pickup ui @s ~ ~ ~ 1.0 1.0