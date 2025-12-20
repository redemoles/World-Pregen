
#> wp:timer/
#
# @within			wp:timer/tick
#
#
# @description		
#

$execute unless score #$(dimension)_chunk_pregen_$(area) wp.pregen matches 1.. run scoreboard players set #$(dimension)_chunk_pregen_$(area) wp.pregen 1000

scoreboard players add #tick_pregen wp.pregen 1
$execute if score #tick_pregen wp.pregen matches 10 run scoreboard players add #$(dimension)_chunk_pregen_$(area) wp.pregen 1

$execute if score #$(dimension)_working wp.pregen matches 2 if score #tick_pregen wp.pregen matches 10 run function wp:region/2048x2048 with storage wp:size pregen
$execute if score #$(dimension)_working wp.pregen matches 4 if score #tick_pregen wp.pregen matches 10 run function wp:region/4096x4096 with storage wp:size pregen
$execute if score #$(dimension)_working wp.pregen matches 6 if score #tick_pregen wp.pregen matches 10 run function wp:region/6144x6144 with storage wp:size pregen
$execute if score #$(dimension)_working wp.pregen matches 8 if score #tick_pregen wp.pregen matches 10 run function wp:region/8192x8192 with storage wp:size pregen
$execute if score #$(dimension)_working wp.pregen matches 10 if score #tick_pregen wp.pregen matches 10 run function wp:region/10240x10240 with storage wp:size pregen
$execute if score #$(dimension)_working wp.pregen matches 20 if score #tick_pregen wp.pregen matches 10 run function wp:region/20480x20480 with storage wp:size pregen

execute if score #tick_pregen wp.pregen matches 10 run scoreboard players set #tick_pregen wp.pregen 0
