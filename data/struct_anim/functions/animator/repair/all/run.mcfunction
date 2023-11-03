kill @e[type=marker,tag=struct_anim_animation_controller]
data modify storage struct_anim:utils root.args.animator_repair_all.ids append from storage struct_anim:animations root.animators[].id
function struct_anim:animator/repair/all/_step