execute as @a[predicate=struct_anim:dynamic_book/in_hand] at @s run execute as @e[type=marker,tag=struct_anim_animation_controller,distance=..4] at @s run particle end_rod ~ ~ ~ 0.25 0.25 0.25 0.01 100

schedule function struct_anim:animation/locate_nearby 1s replace