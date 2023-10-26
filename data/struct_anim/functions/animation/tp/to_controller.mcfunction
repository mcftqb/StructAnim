# uses selected animator
function struct_anim:animation/tp/_store_last_pos

data modify storage struct_anim:utils root.ctx.tp set from storage struct_anim:animations root.animators[-1].controller
function struct_anim:animation/tp/_to_controller with storage struct_anim:animations root.animators[-1].controller
