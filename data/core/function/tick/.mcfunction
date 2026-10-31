#> core:tick/
#
# ワールドのtick処理
#
# @within tags/function minecraft:tick

# ゲームステータスごとの処理
    # 待機中
    execute if data storage nichi: game_state{status:"staying"} run function game_core:staying/

    # ゲーム中
    execute if data storage nichi: game_state{status:"playing"} run function game_core:playing/

# デバッグ
    execute as @a at @s if predicate game_core:player/looking_revive_point run title @s actionbar "test"