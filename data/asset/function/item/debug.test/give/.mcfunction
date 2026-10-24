#> asset:item/debug.test/give/
#
# アイテムデータの設定
#
# @within function api:item/give.m

# ID
    data modify storage asset:item ID set value "debug.test"

# Item本体
    data modify storage asset:item Item set value "stone"

# アイテム名
    data modify storage asset:item RawName set value {"text":"Debug Stone","color":"light_purple","bold":true}

# 説明文
    data modify storage asset:item Lore set value [{"text":"このアイテムを入手できてたらレジストリが機能しています","color":"gray","italic":"false"}]

# アイテムのgive
    function asset:item/common/give