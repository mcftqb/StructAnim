# uses selected animator
data modify storage struct_anim:animations root.animators[-1].last_pos.x set from entity @s Pos[0]
data modify storage struct_anim:animations root.animators[-1].last_pos.y set from entity @s Pos[1]
data modify storage struct_anim:animations root.animators[-1].last_pos.z set from entity @s Pos[2]
data modify storage struct_anim:animations root.animators[-1].last_pos.Dimension set from entity @s Dimension
data modify storage struct_anim:animations root.animators[-1].last_pos.rot_x set from entity @s Rotation[0]
data modify storage struct_anim:animations root.animators[-1].last_pos.rot_y set from entity @s Rotation[1]