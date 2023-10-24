# Uses Animation and animator selected [-1]
data modify storage struct_anim:utils root.ctx.update_animation_controller set from storage struct_anim:animations root.animations[-1].controller
data modify storage struct_anim:utils root.ctx.update_animation_controller.frame set from storage struct_anim:animations root.animators[-1].frame_name
function struct_anim:animation/edition/step/_prefill with storage struct_anim:utils root.ctx.update_animation_controller
