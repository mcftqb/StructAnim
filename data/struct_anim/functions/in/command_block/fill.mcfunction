$data modify storage struct_anim:utils root.ctx.fill_animation set from storage struct_anim:animations root.animators[{id:"$(id)"}].placement
$data modify storage struct_anim:utils root.ctx.fill_animation.block set value "$(block)"
function struct_anim:animation/edition/fill/run with storage struct_anim:utils root.ctx.fill_animation
