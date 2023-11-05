function struct_anim:animator/selection/get

function struct_anim:actions/pause

data modify storage struct_anim:utils root.args.animator_next_frame.id set from storage struct_anim:animations root.animators[-1].id
function struct_anim:animator/play/step/next
