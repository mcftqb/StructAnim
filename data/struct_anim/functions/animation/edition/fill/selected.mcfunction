# uses selected animator
data modify storage struct_anim:utils root.ctx.fill_animation merge from storage struct_anim:animations root.animators[-1].placement
function struct_anim:animation/edition/fill/run with storage struct_anim:utils root.ctx.fill_animation