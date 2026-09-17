
#> wp:load
#
# @within			#minecraft:load
#
#
# @description		
#

scoreboard objectives add wp.player.check dummy
scoreboard objectives add wp.player.disconnect minecraft.custom:minecraft.leave_game
scoreboard objectives add wp.pregen dummy

tellraw @a [{"text":"[","color":"#6F6F6F"},{"text":"World Pregen 26.3.0","color":"#FFE73F"},{"text":" - "},{"text":"for ","color":"#E7E7E7"},{"text":"MC 26.3","color":"#3FE7FF"},{"text":" - "},{"text":"by ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"}]
