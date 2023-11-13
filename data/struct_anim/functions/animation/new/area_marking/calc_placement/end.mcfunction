# Uses selected animator

# Store sizes
execute store result score #animator.calc_pos.end.size.x struct_anim.int run data get storage struct_anim:animations root.animators[-1].placement.size.x
execute store result score #animator.calc_pos.end.size.y struct_anim.int run data get storage struct_anim:animations root.animators[-1].placement.size.y
execute store result score #animator.calc_pos.end.size.z struct_anim.int run data get storage struct_anim:animations root.animators[-1].placement.size.z

# Remove 1 frome sizes
scoreboard players remove #animator.calc_pos.end.size.x struct_anim.int 1
scoreboard players remove #animator.calc_pos.end.size.y struct_anim.int 1
scoreboard players remove #animator.calc_pos.end.size.z struct_anim.int 1

function struct_anim:animator/convert/to_block

# Apply mirroring
execute if data storage struct_anim:animations root.animators[-1].placement{mirror: "LEFT_RIGHT"} run function struct_anim:animation/new/area_marking/calc_placement/_mirror_left_right
execute if data storage struct_anim:animations root.animators[-1].placement{mirror: "FRONT_BACK"} run function struct_anim:animation/new/area_marking/calc_placement/_mirror_front_back

# Apply rotations
execute if data storage struct_anim:animations root.animators[-1].placement{rotation: "CLOCKWISE_90"} run function struct_anim:animation/new/area_marking/calc_placement/_rotate_90
execute if data storage struct_anim:animations root.animators[-1].placement{rotation: "CLOCKWISE_180"} run function struct_anim:animation/new/area_marking/calc_placement/_rotate_180
execute if data storage struct_anim:animations root.animators[-1].placement{rotation: "COUNTERCLOCKWISE_90"} run function struct_anim:animation/new/area_marking/calc_placement/_rotate_270

# X
execute store result score #animator.calc_pos.end.coord struct_anim.int run data get storage struct_anim:animations root.animators[-1].placement.x
scoreboard players operation #animator.calc_pos.end.coord struct_anim.int += #animator.calc_pos.end.size.x struct_anim.int
execute store result storage struct_anim:animations root.animators[-1].placement.endX int 1 run scoreboard players get #animator.calc_pos.end.coord struct_anim.int

# Y
execute store result score #animator.calc_pos.end.coord struct_anim.int run data get storage struct_anim:animations root.animators[-1].placement.y
scoreboard players operation #animator.calc_pos.end.coord struct_anim.int += #animator.calc_pos.end.size.y struct_anim.int
execute store result storage struct_anim:animations root.animators[-1].placement.endY int 1 run scoreboard players get #animator.calc_pos.end.coord struct_anim.int

# Z
execute store result score #animator.calc_pos.end.coord struct_anim.int run data get storage struct_anim:animations root.animators[-1].placement.z
scoreboard players operation #animator.calc_pos.end.coord struct_anim.int += #animator.calc_pos.end.size.z struct_anim.int
execute store result storage struct_anim:animations root.animators[-1].placement.endZ int 1 run scoreboard players get #animator.calc_pos.end.coord struct_anim.int
