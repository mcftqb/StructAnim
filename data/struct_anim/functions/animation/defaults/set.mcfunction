# Uses selected animation and animator

function struct_anim:animation/defaults/reset

# Set default placement
function struct_anim:animator/convert/to_block
data modify storage struct_anim:animations root.animations[-1].defaults.placement.mirror set from storage struct_anim:animations root.animators[-1].placement.mirror
data modify storage struct_anim:animations root.animations[-1].defaults.placement.rotation set from storage struct_anim:animations root.animators[-1].placement.rotation
data modify storage struct_anim:animations root.animations[-1].defaults.placement.integrity set from storage struct_anim:animations root.animators[-1].placement.integrity
data modify storage struct_anim:animations root.animations[-1].defaults.placement.seed set from storage struct_anim:animations root.animators[-1].placement.seed

# Set other defaults
data modify storage struct_anim:animations root.animations[-1].defaults.frame set from storage struct_anim:animations root.animators[-1].frame
data modify storage struct_anim:animations root.animations[-1].defaults.frame_name set from storage struct_anim:animations root.animators[-1].frame_name
data modify storage struct_anim:animations root.animations[-1].defaults.step set from storage struct_anim:animations root.animators[-1].step
data modify storage struct_anim:animations root.animations[-1].defaults.interval set from storage struct_anim:animations root.animators[-1].interval
data modify storage struct_anim:animations root.animations[-1].defaults.reversed set from storage struct_anim:animations root.animators[-1].reversed

# Set default callbacks
function #struct_anim:callbacks/group
data modify storage struct_anim:animations root.animations[-1].defaults.callbacks set from storage struct_anim:animations root.animators[-1].callbacks
