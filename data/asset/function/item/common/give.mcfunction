#> asset:item/common/give
#
# アイテムの渡し処理
#
# @within function asset/item/*/give/

# 検証
    execute unless data storage asset:item ID run tellraw @a ["",{storage:"asset:item",nbt:Prefix.error,interpret:true},{text:"引数が不足しています "},{text:"ID",color:"red"}]
    execute unless data storage asset:item Item run tellraw @a ["",{storage:"asset:item",nbt:Prefix.error,interpret:true},{text:"引数が不足しています "},{text:"Item",color:"red"}]
    execute unless data storage asset:item RawName run tellraw @a ["",{storage:"asset:item",nbt:Prefix.error,interpret:true},{text:"引数が不足しています "},{text:"RawName",color:"red"}]
    execute unless data storage asset:item Lore run tellraw @a ["",{storage:"asset:item",nbt:Prefix.error,interpret:true},{text:"引数が不足しています "},{text:"Lore",color:"red"}]

# データの設定
    function asset_manager:item/create/set_data

# アイテムを渡す
    execute in world:system_area run loot give @s mine 0 0 0 debug_stick

# リセット
    data remove storage asset:item ID
    data remove storage asset:item Item
    data remove storage asset:item RawName
    data remove storage asset:item Lore