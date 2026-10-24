#> core:load/
#
# /reload時の処理
#
# @within tags/function minecraft:load

# Prefix
    data modify storage global: Prefix.info set value '§l§a[NICHIBATTLE/INFO] >>> §r'
    data modify storage global: Prefix.error set value '§l§c[NICHIBATTLE/ERROR] >>> §r'
    data modify storage global: Prefix.debug set value '§l§7[NICHIBATTLE/DEBUG] >>> §r'

# 一度のみ実行
    data modify storage global: IsCompleate set value false

    execute if data storage global: {IsCompleate:true} unless data storage global: Version run function core:load/once
    execute unless data storage global: {IsCompleate:true} run function core:load/once

# リロード完了メッセージ
    tellraw @a ["",{storage:"global:",nbt:Prefix.info,interpret:true},{text:"データパックの再読み込み完了"}]