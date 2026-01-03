
#> wp:player/check
#
# @within			wp:tick
#
#
# @description		
#

scoreboard players set @s wp.player.check 1
scoreboard players set @s wp.player.disconnect 0
tellraw @s [{"text":"\n[","color":"#6F6F6F"},{"text":"World Pregen","color":"#FFE73F"},{"text":"] "},{"text":"\n/function wp:pregen/[dimension]/[size] >","color":"#CFCFCF"},{"text":" Start pre-generation of the map","color":"#FFFFFF"},{"text":"\n/function wp:pregen/pause >","color":"#CFCFCF"},{"text":" Pause pre-generation of the map","color":"#FFFFFF"}]
