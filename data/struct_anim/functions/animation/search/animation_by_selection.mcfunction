# Uses selected animator

data modify storage struct_anim:utils root.args.get_animation.id set from storage struct_anim:animations root.animators[-1].animation
function struct_anim:animation/search/animation_by_name
