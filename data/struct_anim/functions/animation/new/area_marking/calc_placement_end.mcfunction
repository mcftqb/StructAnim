# Uses selected animator

# X
execute store result score #animator.calc_pos.end.coord struct_anim.int run data get storage struct_anim:animations root.animators[-1].placement.x
execute store result score #animator.calc_pos.end.size struct_anim.int run data get storage struct_anim:animations root.animators[-1].placement.size.x
scoreboard players operation #animator.calc_pos.end.coord struct_anim.int += #animator.calc_pos.end.size struct_anim.int
scoreboard players remove #animator.calc_pos.end.coord struct_anim.int 1
execute store result storage struct_anim:animations root.animators[-1].placement.endX int 1 run scoreboard players get #animator.calc_pos.end.coord struct_anim.int

# Y
execute store result score #animator.calc_pos.end.coord struct_anim.int run data get storage struct_anim:animations root.animators[-1].placement.y
execute store result score #animator.calc_pos.end.size struct_anim.int run data get storage struct_anim:animations root.animators[-1].placement.size.y
scoreboard players operation #animator.calc_pos.end.coord struct_anim.int += #animator.calc_pos.end.size struct_anim.int
scoreboard players remove #animator.calc_pos.end.coord struct_anim.int 1
execute store result storage struct_anim:animations root.animators[-1].placement.endY int 1 run scoreboard players get #animator.calc_pos.end.coord struct_anim.int

# Z
execute store result score #animator.calc_pos.end.coord struct_anim.int run data get storage struct_anim:animations root.animators[-1].placement.z
execute store result score #animator.calc_pos.end.size struct_anim.int run data get storage struct_anim:animations root.animators[-1].placement.size.z
scoreboard players operation #animator.calc_pos.end.coord struct_anim.int += #animator.calc_pos.end.size struct_anim.int
scoreboard players remove #animator.calc_pos.end.coord struct_anim.int 1
execute store result storage struct_anim:animations root.animators[-1].placement.endZ int 1 run scoreboard players get #animator.calc_pos.end.coord struct_anim.int
