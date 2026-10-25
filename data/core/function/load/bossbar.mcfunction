#> core:load/bossbar
#
# ボスバーのロード処理
#
# @within function core:load/once

# ボスバーの作成
    bossbar add nichi:multi_timer ""
    bossbar add nichi:solo_timer ""

# ボスバーの設定
    bossbar set nichi:multi_timer players @a
    bossbar set nichi:multi_timer visible false

    bossbar set nichi:solo_timer players @a
    bossbar set nichi:solo_timer visible false

# 実行完了時のメッセージ
    tellraw @a ["",{storage:"global:",nbt:Prefix.info},{text:"ボスバーの読み込み完了"}]