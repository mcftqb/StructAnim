function struct_anim:animator/selection/get

$scoreboard players set #in.anim_params.reversed struct_anim.int $(reversed)
execute store success storage struct_anim:animations root.animators[-1].reversed byte 1 unless score #in.anim_params.reversed struct_anim.int matches 0
scoreboard players reset #in.anim_params.reversed struct_anim.int
tellraw @s [{"text": "Animation(", "color": "gold"}, {"nbt":"root.animators[-1].id", "storage": "struct_anim:animations"}, ").reversed successfully set to ", {"nbt":"root.animators[-1].reversed", "storage": "struct_anim:animations", "bold": true}]