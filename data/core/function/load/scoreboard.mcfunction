#> core:load/scoreboard
#
# スコアボードのリロード
#
# @within function core:load/once

# スコアボードの作成
# イベントハンドラー
    # 初ログイン
    scoreboard objectives add First_Login custom:play_time

    # 2回目以降のログイン
    scoreboard objectives add LeaveCount custom:leave_game

    # 死亡検知
    scoreboard objectives add Death deathCount

# その他スコア
    # グローバル
    scoreboard objectives add Global dummy

    # 計算用スコア
    scoreboard objectives add Constant dummy

    # 一時スコア
    scoreboard objectives add Temporary dummy

    # 時間
    scoreboard objectives add Timer dummy

    # チームをスコアで判別
    scoreboard objectives add Team_ID dummy

    # スポーン位置のスコア
    scoreboard objectives add Spawn_Point_Score dummy

    # 拡張マップのID
    scoreboard objectives add Extension_Map_ID dummy

    # プレイフラグ(プレイ中のプレイヤーのみスコアがある)
    scoreboard objectives add PlayingFlag dummy

    # デスボックスID
    scoreboard objectives add Death_Box_ID dummy

# プレイヤーのステータスに関連するスコア
    # プレイヤーID
    scoreboard objectives add Player_ID dummy

    # プレイヤーの体力
    scoreboard objectives add HP health

    # バックパックレベル
    scoreboard objectives add Player.Backpack_Level dummy

# スコアボードの設定
    scoreboard objectives setdisplay below_name HP

# スコアの設定
# ボーダー関連の時間が設定されていないとき
    execute unless score $Max_Normal_Time.tick Timer matches -2147483648..2147483647 run scoreboard players set $Max_Normal_Time.tick Timer 3600
    execute unless score $Max_Reduction_Time.tick Timer matches -2147483648..2147483647 run scoreboard players set $Max_Reduction_Time.tick Timer 2400

# 実行完了時のメッセージ
    tellraw @a ["",{storage:"global:",nbt:Prefix.info,interpret:true},{text:"スコアボードの読み込み完了"}]