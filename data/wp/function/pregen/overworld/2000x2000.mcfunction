
#> wp:pregen/overworld/2000x2000
#
# @within			
#
#
# @description		Génération de la map en 2000x2000, toute dimension confondue
#

tellraw @s [{"text":"\n[","color":"#6F6F6F"},{"text":"World Pregen","color":"#FFE73F"},{"text":"] "},{"text":"\n/function wp:pregen/pause >","color":"#CFCFCF"},{"text":" Pause pre-generation of the map","color":"#FFFFFF"}]

scoreboard players set #overworld_working wp.pregen 2
scoreboard players set #the_nether_working wp.pregen 0
scoreboard players set #the_end_working wp.pregen 0

execute store result storage wp:size pregen.area int 1 run scoreboard players get #overworld_working wp.pregen
data modify storage wp:size pregen.text set value [{"text":"Overworld : ","color":"#FFFFFF"}]
data modify storage wp:size pregen.dimension set value overworld
