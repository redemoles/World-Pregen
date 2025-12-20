
#> wp:pregen/the_end/10000x10000
#
# @within			
#
#
# @description		Génération de la map en 10000x10000, toute dimension confondue
#

tellraw @s [{"text":"\n/function wp:pregen/pause >","color":"#CFCFCF"},{"text":" Pause pre-generation of the map","color":"#FFFFFF"}]

scoreboard players set #overworld_working wp.pregen 0
scoreboard players set #the_nether_working wp.pregen 0
scoreboard players set #the_end_working wp.pregen 10

execute store result storage wp:size pregen.area int 1 run scoreboard players get #the_end_working wp.pregen
data modify storage wp:size pregen.text set value [{"text":"End : ","color":"#E73FFF"}]
data modify storage wp:size pregen.dimension set value the_end
