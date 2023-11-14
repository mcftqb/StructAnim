# uses selected animator
function struct_anim:animation/tp/selection/get
data modify storage struct_anim:animations root.last_positions[-1].x set from entity @s Pos[0]
data modify storage struct_anim:animations root.last_positions[-1].y set from entity @s Pos[1]
data modify storage struct_anim:animations root.last_positions[-1].z set from entity @s Pos[2]

execute store result storage struct_anim:animations root.last_positions[-1].x float 0.01 run data get storage struct_anim:animations root.last_positions[-1].x 100
execute store result storage struct_anim:animations root.last_positions[-1].y float 0.01 run data get storage struct_anim:animations root.last_positions[-1].y 100
execute store result storage struct_anim:animations root.last_positions[-1].z float 0.01 run data get storage struct_anim:animations root.last_positions[-1].z 100

data modify storage struct_anim:animations root.last_positions[-1].Dimension set from entity @s Dimension
data modify storage struct_anim:animations root.last_positions[-1].rot_x set from entity @s Rotation[0]
data modify storage struct_anim:animations root.last_positions[-1].rot_y set from entity @s Rotation[1]