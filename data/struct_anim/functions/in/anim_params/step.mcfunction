function struct_anim:animator/selection/get

$scoreboard players set #in.anim_params.step struct_anim.int $(step)
execute store result storage struct_anim:animations root.animators[-1].step int 1 run scoreboard players get #in.anim_params.step struct_anim.int
scoreboard players reset #in.anim_params.step struct_anim.int
tellraw @s [{"text": "Animation(", "color": "gold"}, {"nbt":"root.animators[-1].id", "storage": "struct_anim:animations","font": "uniform","bold": true}, ").step successfully set to ", {"nbt":"root.animators[-1].step", "storage": "struct_anim:animations", "bold": true}]