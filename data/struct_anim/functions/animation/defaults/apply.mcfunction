# Uses selected animation and animator

execute unless data storage struct_anim:animations root.animations[-1].defaults run tellraw @s {"text": "No defaults are found, nothing has changed!", "color": "red"}
execute unless data storage struct_anim:animations root.animations[-1].defaults run return 0

# Set default placement
data modify storage struct_anim:animations root.animators[-1].placement.integrity set from storage struct_anim:animations root.animations[-1].defaults.placement.integrity
data modify storage struct_anim:animations root.animators[-1].placement.seed set from storage struct_anim:animations root.animations[-1].defaults.placement.seed

# Set other defaults
function struct_anim:animation/defaults/apply_other

tellraw @s {"text": "Animation instance was successfully reset to default!", "color": "gold"}