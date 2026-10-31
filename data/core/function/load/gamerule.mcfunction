#> core:load/gamerule
#
# ゲームルールの設定
#
# @within function core:load/once

# 時間の経過
    gamerule advance_time false

# 天候の変化
    gamerule advance_weather false

# ネザーゲートを使用したネザーへの移動
    gamerule allow_entering_nether_using_portals false

# コマンドブロックのログ表示
    gamerule command_block_output false

# 溺水ダメージ
    gamerule drowning_damage false

# 落下ダメージ
    gamerule fall_damage false

# 炎ダメージ
    gamerule fire_damage false

# 炎の広がり
    gamerule fire_spread_radius_around_player 0

# 凍結ダメージ
    gamerule freeze_damage false

# 即時リスポーン
    gamerule immediate_respawn true

# キープインベントリ
    gamerule keep_inventory true

# ロケーターバー
    gamerule locator_bar false

# Mobの破壊行動
    gamerule mob_griefing false

# 体力の自動回復
    gamerule natural_health_regeneration false

# pvpの有効化
    gamerule pvp true

# 襲撃の発生
    gamerule raids false

# ランダムティックの発生数
    gamerule random_tick_speed 0

# デバッグ情報の制限
    gamerule reduced_debug_info false

# リスポーン地点の半径
    gamerule respawn_radius 0

# コマンドの実行結果の表示
    gamerule send_command_feedback true

# 進捗達成通知
    gamerule show_advancement_messages false

# 死亡メッセージの表示
    gamerule show_death_messages true

# Mobのスポーン
    gamerule spawn_mobs false

# 敵対モブのスポーン
    gamerule spawn_monsters false

# 略奪隊のスポーン
    gamerule spawn_patrols false

# ファントムのスポーン
    gamerule spawn_phantoms

# 行商人のスポーン
    gamerule spawn_wandering_traders false

# ウォーデンのスポーン
    gamerule spawn_wardens false

# スポナーの有効化
    gamerule spawner_blocks_work false

# スペくてイターモードのプレイヤーによるチャンクの生成
    gamerule spectators_generate_chunks true

# ツタの成長
    gamerule spread_vines false

# tntの発火爆発の許可
    gamerule tnt_explodes false

# 実行完了時のメッセージ
    tellraw @a ["",{storage:"global:",nbt:Prefix.info},{text:"ゲームルールの読み込み完了"}]