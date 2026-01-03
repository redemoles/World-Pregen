
#> wp:pregen/the_nether/8000x8000
#
# @within			
#
#
# @description		Génération de la map en 8000x8000, toute dimension confondue
#

tellraw @s [{"text":"\n[","color":"#6F6F6F"},{"text":"World Pregen","color":"#FFE73F"},{"text":"] "},{"text":"\n/function wp:pregen/pause >","color":"#CFCFCF"},{"text":" Pause pre-generation of the map","color":"#FFFFFF"}]

scoreboard players set #overworld_working wp.pregen 0
scoreboard players set #the_nether_working wp.pregen 8
scoreboard players set #the_end_working wp.pregen 0

execute store result storage wp:size pregen.area int 1 run scoreboard players get #the_nether_working wp.pregen
data modify storage wp:size pregen.text set value [{"text":"Nether : ","color":"#FF6F3F"}]
data modify storage wp:size pregen.dimension set value the_nether
