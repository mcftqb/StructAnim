# Uses selected animation and animator

data modify storage struct_anim:animations root.animators[-1].frame set from storage struct_anim:animations root.animations[-1].defaults.frame
data modify storage struct_anim:animations root.animators[-1].frame_name set from storage struct_anim:animations root.animations[-1].defaults.frame_name
data modify storage struct_anim:animations root.animators[-1].step set from storage struct_anim:animations root.animations[-1].defaults.step
data modify storage struct_anim:animations root.animators[-1].interval set from storage struct_anim:animations root.animations[-1].defaults.interval
data modify storage struct_anim:animations root.animators[-1].reversed set from storage struct_anim:animations root.animations[-1].defaults.reversed

# Set default callbacks
data remove storage struct_anim:animations root.animators[-1].callbacks
data modify storage struct_anim:animations root.animators[-1].callbacks set from storage struct_anim:animations root.animations[-1].defaults.callbacks
function #struct_anim:callbacks/group