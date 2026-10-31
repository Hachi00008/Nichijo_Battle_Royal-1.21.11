#> game_core:playing/player/death/summon_head
#
# 蘇生用の頭の召喚
#
# @within function game_core:playing/player/death

# アマスタ召喚
    execute align xz positioned ~0.5 ~-0.23 ~0.5 run summon armor_stand ~ ~ ~ {Marker:true,Invisible:true,Tags:["revive_head_passenger","shulker_box_pos"],Passengers:[{id:"armor_stand",Marker:false,Invisible:true,Tags:["revive_head","head_init"]}]}
    execute align xz positioned ~0.5 ~1 ~0.5 run summon interaction ~ ~0.19 ~ {width:0.65,height:0.65,Tags:["revive_check_interact"],response:false}

# プレイヤーヘッドの設置
    execute in world:system_area run loot replace block 0 0 0 container.0 loot libs:player_head
    execute in world:system_area run item replace entity @n[tag=head_init] armor.head from block 0 0 0 container.0
    execute in world:system_area run data remove block 0 0 0 Items

# チームID代入
    scoreboard players operation @n[type=armor_stand,tag=head_init] Team_ID = @s Team_ID

# デスボックスID
    scoreboard players operation @n[type=armor_stand,tag=head_init] Death_Box_ID = @s Player_ID

# タグ削除
    tag @e[tag=head_init] remove head_init