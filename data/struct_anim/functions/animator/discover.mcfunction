execute as @e[type=marker,tag=struct_anim_animation_controller,limit=1,sort=nearest,distance=..4] at @s run data modify storage struct_anim:utils root.args.select_animator.animator set from entity @s data.id
execute if entity @e[type=marker,tag=struct_anim_animation_controller,limit=1,distance=..4] run function struct_anim:animator/selection/set
execute unless entity @e[type=marker,tag=struct_anim_animation_controller,limit=1,distance=..4] run tellraw @s {"color": "red", "text":"No controllers found in 4 blocks radius"}
