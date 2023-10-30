function struct_anim:animator/selection/get
data modify storage struct_anim:animations root.animators[-1].callbacks.end.ongoing append value "function struct_anim:actions/pause"
tellraw @s {"text": "Successfully applied Run once callback recipe", "color": "gold"}