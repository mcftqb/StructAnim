# uses selected animator
#alias entity animationController @e[type=marker,tag=struct_anim_animation_controller]

tag @s add struct_anim_animation_controller
data modify entity @s data.id set from storage struct_anim:animations root.animators[-1].id
