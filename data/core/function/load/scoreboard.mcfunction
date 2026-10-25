#> core:load/scoreboard
#
# スコアボードのリロード
#
# @within function core:load/once

# スコアボードの作成
# イベントハンドラー

# その他スコア
    # グローバル
    scoreboard objectives add Global dummy

    # 計算用スコア
    scoreboard objectives add Constant dummy

    # 時間
    scoreboard objectives add Timer dummy

# スコアの設定
# ボーダー関連の時間が設定されていないとき
    execute unless score $Max_Normal_Reduction_Time.tick Timer matches -2147483648..2147483647 run scoreboard players set $Max_Normal_Reduction_Time.tick Timer 3600
    execute unless score $Max_Reduction_Time.tick Timer matches -2147483648..2147483647 run scoreboard players set $Max_Reduction_Time.tick Timer 2400

# 実行完了時のメッセージ
    tellraw @a ["",{storage:"global:",nbt:Prefix.info,interpret:true},{text:"スコアボードの読み込み完了"}]