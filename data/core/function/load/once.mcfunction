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