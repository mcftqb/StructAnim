execute positioned ~ ~ ~1 unless entity @e[type=marker,distance=..0.5,tag=struct_anim_select] run function struct_anim:select/_mark
execute positioned ~ ~ ~-1 unless entity @e[type=marker,distance=..0.5,tag=struct_anim_select] run function struct_anim:select/_mark
execute positioned ~1 ~ ~ unless entity @e[type=marker,distance=..0.5,tag=struct_anim_select] run function struct_anim:select/_mark
execute positioned ~-1 ~ ~ unless entity @e[type=marker,distance=..0.5,tag=struct_anim_select] run function struct_anim:select/_mark
execute positioned ~ ~1 ~ unless entity @e[type=marker,distance=..0.5,tag=struct_anim_select] run function struct_anim:select/_mark
execute positioned ~ ~-1 ~ unless entity @e[type=marker,distance=..0.5,tag=struct_anim_select] run function struct_anim:select/_mark
tag @s add struct_anim_extended