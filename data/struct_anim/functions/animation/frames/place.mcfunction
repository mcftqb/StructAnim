# uses selected animator [-1], transitive use selected animation

execute unless data storage struct_anim:animations root.animators[-1].frame_name run return 0
execute unless data storage struct_anim:animations root.animations[-1].frames[0] run return 0

function struct_anim:animator/convert/to_command
data modify storage struct_anim:utils root.ctx.place_frame set from storage struct_anim:animations root.animators[-1].placement
data modify storage struct_anim:utils root.ctx.place_frame.frame set from storage struct_anim:animations root.animators[-1].frame_name
function struct_anim:animation/edition/step/prefill
function struct_anim:animation/frames/_place with storage struct_anim:utils root.ctx.place_frame