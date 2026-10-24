#> asset_manager:item/create/set_data
#
# アイテムデータ設定
#
# @within function asset:item/common/give

# 移行
    data modify storage asset:item BaseItem set from storage asset:item Item

# 初期化
    data modify storage asset:item Item set value {}

# 個数初期化
    data modify storage asset:item Item.count set value 1b

# アイテムバージョン
    data modify storage asset:item Item.components."minecraft:custom_data".Nichi.Version set from storage global: Version

# 代入
    data modify storage asset:item Item.id set from storage asset:item BaseItem
    data modify storage asset:item Item.components."minecraft:custom_data".Nichi.RawName set from storage asset:item RawName
    data modify storage asset:item Item.components."minecraft:custom_data".Nichi.ID set from storage asset:item ID
    data modify storage asset:item Item.components."minecraft:lore" append from storage asset:item Lore

# 名称設定
    execute in world:system_area run loot replace block 0 0 0 container.0 loot asset_manager:item/get_name/
    execute in world:system_area run data modify storage asset:item Item.components."minecraft:item_name" set from block 0 0 0 Items[0].components."minecraft:item_name"
    execute in world:system_area run data remove block 0 0 0 Items[0]

# データの適応
    execute in world:system_area run item replace block 0 0 0 container.0 with stone
    execute in world:system_area run data modify block 0 0 0 Items[0] set from storage asset:item Item

# リセット
    data remove storage asset:item BaseItem