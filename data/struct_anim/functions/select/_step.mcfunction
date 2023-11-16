execute as @e[type=marker,tag=struct_anim_select,tag=!struct_anim_extended] at @s run function struct_anim:select/_extend
scoreboard players remove #select.max_steps struct_anim.int 1
execute if score #select.max_steps struct_anim.int matches 1.. run function struct_anim:select/_step