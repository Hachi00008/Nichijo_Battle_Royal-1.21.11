#> game_core:change_mode/solo
#
# ゲームモードを「ソロ」に変更

# 待機中のみ実行可能
    execute unless data storage nichi: game_state{status:staying} run tellraw @s ["",{storage:"global:",nbt:Prefix.error,interpret:true},{text:"ゲーム状態が待機中でないため変更できませんでした"}]
    execute unless data storage nichi: game_state{status:staying} run playsound block.note_block.bass ui @s ~ ~ ~ 1.0 1.0
    execute unless data storage nichi: game_state{status:staying} run return fail

# ストレージの変更
    data modify storage nichi: game_state.mode set value solo

# 全プレイヤーをチームから脱退(観戦者以外)
    team leave @a[team=!Spectate]
    scoreboard players reset @a Team_ID

# アイテムクリア
    item replace entity @a armor.chest with air

# メッセージの表示
    tellraw @a ["",{text:"ゲームモードを"},{text:"ソロ",bold:true},{text:"に変更しました"}]

# 演出
    execute as @a at @s run playsound entity.experience_orb.pickup ui @s ~ ~ ~ 1.0 1.0