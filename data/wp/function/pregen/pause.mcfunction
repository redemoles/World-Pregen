
#> wp:pregen/pause
#
# @within			
#
#
# @description		Mise en pause de la génération de la map
#

tellraw @s [{"text":"\n/function wp:pregen/[dimension]/[size] >","color":"#CFCFCF"},{"text":" Unpause pre-generation of the map","color":"#FFFFFF"}]

scoreboard players set #overworld_working wp.pregen 0
scoreboard players set #the_nether_working wp.pregen 0
scoreboard players set #the_end_working wp.pregen 0
