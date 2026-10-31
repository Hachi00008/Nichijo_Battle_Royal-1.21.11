#> #> core:load/once
#
# 1度だけ実行されるLoad Function
#
# @within function core:load/

# バージョン
    data modify storage global: Version set value "0.0.1"

# Forceload
    # System Area
        execute in world:system_area run forceload add -1 -1 0 0

# シュルカーボックス
    execute in world:system_area run setblock 0 0 0 pink_shulker_box{lock:{items:"debug_stick"}}

# ワールドボーダーのダメージ設定
    worldborder damage amount 0.01
    worldborder damage buffer 1.0

# スコアボードの読み込み
    function core:load/scoreboard

# ゲームルールの読み込み
    function core:load/gamerule

# ボスバーの読み込み
    function core:load/bossbar

# チームの読み込み
    function core:load/team

# ストレージの読み込み
    function core:load/storage