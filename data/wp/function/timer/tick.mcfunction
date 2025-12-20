
#> wp:timer/tick
#
# @within			#minecraft:tick
#
#
# @description		
#

execute as @a unless score @s wp.player.check matches 1.. run function wp:player/check
execute as @a if score @s wp.player.disconnect matches 1.. run function wp:player/disconnect

execute if score #overworld_working wp.pregen matches 1.. in minecraft:overworld run function wp:timer/pregen_working with storage wp:size pregen
execute if score #the_nether_working wp.pregen matches 1.. in minecraft:the_nether run function wp:timer/pregen_working with storage wp:size pregen
execute if score #the_end_working wp.pregen matches 1.. in minecraft:the_end run function wp:timer/pregen_working with storage wp:size pregen
