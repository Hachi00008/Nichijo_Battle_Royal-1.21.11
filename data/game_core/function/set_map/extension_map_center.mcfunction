#> game_core:set_map/extension_map_center
#
# 拡張マップの中心の設定
#
# @within advancement game_core:set_extension_map

# 進捗の解除
    advancement revoke @s only game_core:set_extension_map

# マップの中心を表すアマスタをターゲット
    execute as @e[distance=..7,type=armor_stand,tag=Extension_Map_Center] if data entity @s {PortalCooldown:10} run function game_core:set_map/set_id