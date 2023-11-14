# uses selected animator
function struct_anim:animation/tp/selection/get
data modify storage struct_anim:animations root.last_positions[-1].x set from entity @s Pos[0]
data modify storage struct_anim:animations root.last_positions[-1].y set from entity @s Pos[1]
data modify storage struct_anim:animations root.last_positions[-1].z set from entity @s Pos[2]
data modify storage struct_anim:animations root.last_positions[-1].Dimension set from entity @s Dimension
data modify storage struct_anim:animations root.last_positions[-1].rot_x set from entity @s Rotation[0]
data modify storage struct_anim:animations root.last_positions[-1].rot_y set from entity @s Rotation[1]