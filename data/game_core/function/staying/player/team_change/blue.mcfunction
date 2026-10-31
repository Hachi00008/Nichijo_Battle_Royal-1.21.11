#> game_core:staying/player/team_change/blue
#
# ブルーチームに参加
#
# @within function game_core:staying/player/team_change/

# タグの付与
    tag @s add change_lock

# チーム人数が3人以上なら参加不可
    execute store result score $Team_Player Temporary if entity @a[team=Team_Blue]
    execute if score $Team_Player Temporary matches 3.. run tellraw @s ["",{text:"チーム内の人数が最大のため参加できません",color:"red"}]
    execute if score $Team_Player Temporary matches 3.. run playsound block.note_block.bass player @s ~ ~ ~ 1.0 1.0
    execute if score $Team_Player Temporary matches 3.. run return fail

# 防具付与
    item replace entity @s armor.chest with leather_chestplate[dyed_color=3949738,enchantments={binding_curse:1,vanishing_curse:1},tooltip_display={hidden_components:["dyed_color","enchantments"]},unbreakable={}]

# チームに参加
    team join Team_Blue @s
    scoreboard players set @s Team_ID 3