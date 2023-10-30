function struct_anim:animator/selection/get
data modify storage struct_anim:animations root.animators[-1].callbacks.edge.ongoing append value "function struct_anim:actions/pause_reversed"
tellraw @s {"text": "Successfully applied Toggle Reverse callback recipe", "color": "gold"}