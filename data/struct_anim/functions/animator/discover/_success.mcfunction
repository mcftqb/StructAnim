execute as @e[type=marker,tag=struct_anim_animation_controller,limit=1,sort=nearest,distance=..4] at @s run data modify storage struct_anim:utils root.args.select_animator.animator set from entity @s data.id
function struct_anim:animator/selection/set
tellraw @s {"color": "gold", "text":"Controller successfully selected!"}