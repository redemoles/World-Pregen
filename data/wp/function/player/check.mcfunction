
#> wp:player/check
#
# @within			wp:tick
#
#
# @description		
#

scoreboard players set @s wp.player.check 1
tellraw @s [{"text":"\n/function wp:pregen/[dimension]/[size] >","color":"#CFCFCF"},{"text":" Start pre-generation of the map","color":"#FFFFFF"},{"text":"\n/function wp:pregen/pause >","color":"#CFCFCF"},{"text":" Pause pre-generation of the map","color":"#FFFFFF"}]
