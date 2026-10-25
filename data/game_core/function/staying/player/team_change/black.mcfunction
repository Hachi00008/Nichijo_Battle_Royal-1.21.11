#> game_core:staying/player/team_change/black
#
# ブラックチームに参加
#
# @within function game_core:staying/player/team_change/

# 防具付与
    item replace entity @s armor.chest with leather_chestplate[dyed_color=1908001,enchantments={binding_curse:1},tooltip_display={hidden_components:["dyed_color","enchantments"]}]

# チームに参加
    team join Team_Black @s