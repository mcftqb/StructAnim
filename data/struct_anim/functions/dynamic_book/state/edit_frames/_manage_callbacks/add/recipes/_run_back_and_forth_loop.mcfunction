function struct_anim:animator/selection/get
data modify storage struct_anim:animations root.animators[-1].callbacks.edge.ongoing append value "function struct_anim:actions/reverse"
function #struct_anim:callbacks/group
tellraw @s {"text": "Successfully applied Back and Forth loop callback recipe", "color": "gold"}