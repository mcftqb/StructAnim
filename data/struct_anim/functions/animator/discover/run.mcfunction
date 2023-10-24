scoreboard players set #VAR_0 struct_anim.int 4
function struct_anim:select/start
execute as @e[type=marker,tag=struct_anim_select] at @s unless block ~ ~ ~ minecraft:structure_block[mode=save] run kill @s
execute as @e[type=marker,tag=struct_anim_select] at @s run function struct_anim:animator/discover/_ensure_is_controller
execute as @e[type=marker,tag=struct_anim_select,limit=1,sort=nearest] at @s run function struct_anim:animator/discover/_on_success
execute if entity @e[type=marker,tag=struct_anim_select,limit=1] run function struct_anim:animator/selection/set
execute unless entity @e[type=marker,tag=struct_anim_select,limit=1] run function struct_anim:animator/discover/_on_failure
function struct_anim:select/deselect