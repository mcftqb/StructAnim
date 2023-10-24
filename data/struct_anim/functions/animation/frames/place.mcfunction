# uses selected animator [-1], transitive use selected animation

data modify storage struct_anim:utils root.ctx.place_frame set from storage struct_anim:animations root.animators[-1].placement
data modify storage struct_anim:utils root.ctx.place_frame.frame set from storage struct_anim:animations root.animators[-1].frame_name
function struct_anim:animation/edition/step/prefill
function struct_anim:animation/frames/_place with storage struct_anim:utils root.ctx.place_frame