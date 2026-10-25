#> core:load/team
#
# チームの読み込み
#
# @within function core:load/once

# チームの作成
    team add Team_Aqua
    team add Team_Black
    team add Team_Blue
    team add Team_Green
    team add Team_Orange
    team add Team_Purple
    team add Team_Red
    team add Team_White
    team add Team_Yellow

    team add Spectate

# チームの設定
    team modify Team_Aqua color aqua
    team modify Team_Aqua collisionRule never
    team modify Team_Aqua deathMessageVisibility always
    team modify Team_Aqua friendlyFire false
    team modify Team_Aqua nametagVisibility hideForOtherTeams
    team modify Team_Aqua seeFriendlyInvisibles true
    
    team modify Team_Black color black
    team modify Team_Black collisionRule never
    team modify Team_Black deathMessageVisibility always
    team modify Team_Black friendlyFire false
    team modify Team_Black nametagVisibility hideForOtherTeams
    team modify Team_Black seeFriendlyInvisibles true
    
    team modify Team_Blue color blue
    team modify Team_Blue collisionRule never
    team modify Team_Blue deathMessageVisibility always
    team modify Team_Blue friendlyFire false
    team modify Team_Blue nametagVisibility hideForOtherTeams
    team modify Team_Blue seeFriendlyInvisibles true
    
    team modify Team_Orange color gold
    team modify Team_Orange collisionRule never
    team modify Team_Orange deathMessageVisibility always
    team modify Team_Orange friendlyFire false
    team modify Team_Orange nametagVisibility hideForOtherTeams
    team modify Team_Orange seeFriendlyInvisibles true
    
    team modify Team_Green color green
    team modify Team_Green collisionRule never
    team modify Team_Green deathMessageVisibility always
    team modify Team_Green friendlyFire false
    team modify Team_Green nametagVisibility hideForOtherTeams
    team modify Team_Green seeFriendlyInvisibles true
    
    team modify Team_Purple color light_purple
    team modify Team_Purple collisionRule never
    team modify Team_Purple deathMessageVisibility always
    team modify Team_Purple friendlyFire false
    team modify Team_Purple nametagVisibility hideForOtherTeams
    team modify Team_Purple seeFriendlyInvisibles true
    
    team modify Team_Red color red
    team modify Team_Red collisionRule never
    team modify Team_Red deathMessageVisibility always
    team modify Team_Red friendlyFire false
    team modify Team_Red nametagVisibility hideForOtherTeams
    team modify Team_Red seeFriendlyInvisibles true
    
    team modify Team_White color white
    team modify Team_White collisionRule never
    team modify Team_White deathMessageVisibility always
    team modify Team_White friendlyFire false
    team modify Team_White nametagVisibility hideForOtherTeams
    team modify Team_White seeFriendlyInvisibles true
    
    team modify Team_Yellow color yellow
    team modify Team_Yellow collisionRule never
    team modify Team_Yellow deathMessageVisibility always
    team modify Team_Yellow friendlyFire false
    team modify Team_Yellow nametagVisibility hideForOtherTeams
    team modify Team_Yellow seeFriendlyInvisibles true
    
    team modify Spectate color gray
    team modify Spectate collisionRule never
    team modify Spectate displayName ["",{text:"観戦チーム",color:"gray",bold:true}]
    team modify Spectate friendlyFire false
    team modify Spectate nametagVisibility always
    team modify Spectate seeFriendlyInvisibles true