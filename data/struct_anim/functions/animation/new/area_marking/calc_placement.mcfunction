# calc_animation_placement uses selected animator
# Uses BlockEntity at ~ ~ ~ and any nearest entity

function struct_anim:animator/get_block_pos
data modify storage struct_anim:animations root.animators[-1].placement set from storage struct_anim:utils root.return.get_block_pos

# X
execute store result score #VAR_0 struct_anim.int run data get storage struct_anim:animations root.animators[-1].placement.x
execute store result score #VAR_1 struct_anim.int run data get block ~ ~ ~ posX
scoreboard players operation #VAR_0 struct_anim.int += #VAR_1 struct_anim.int
execute store result storage struct_anim:animations root.animators[-1].placement.x int 1 run scoreboard players get #VAR_0 struct_anim.int

# Y
execute store result score #VAR_0 struct_anim.int run data get storage struct_anim:animations root.animators[-1].placement.y
execute store result score #VAR_1 struct_anim.int run data get block ~ ~ ~ posY
scoreboard players operation #VAR_0 struct_anim.int += #VAR_1 struct_anim.int
execute store result storage struct_anim:animations root.animators[-1].placement.y int 1 run scoreboard players get #VAR_0 struct_anim.int

# Z
execute store result score #VAR_0 struct_anim.int run data get storage struct_anim:animations root.animators[-1].placement.z
execute store result score #VAR_1 struct_anim.int run data get block ~ ~ ~ posZ
scoreboard players operation #VAR_0 struct_anim.int += #VAR_1 struct_anim.int
execute store result storage struct_anim:animations root.animators[-1].placement.z int 1 run scoreboard players get #VAR_0 struct_anim.int

# Read other params
data modify storage struct_anim:animations root.animators[-1].placement.rotation set from block ~ ~ ~ rotation
data modify storage struct_anim:animations root.animators[-1].placement.mirror set from block ~ ~ ~ mirror
data modify storage struct_anim:animations root.animators[-1].placement.seed set from block ~ ~ ~ seed
data modify storage struct_anim:animations root.animators[-1].placement.integrity set from block ~ ~ ~ integrity

data modify storage struct_anim:animations root.animators[-1].placement.offset.x set from block ~ ~ ~ posX
data modify storage struct_anim:animations root.animators[-1].placement.offset.y set from block ~ ~ ~ posY
data modify storage struct_anim:animations root.animators[-1].placement.offset.z set from block ~ ~ ~ posZ

data modify storage struct_anim:animations root.animators[-1].placement.size.x set from block ~ ~ ~ sizeX
data modify storage struct_anim:animations root.animators[-1].placement.size.y set from block ~ ~ ~ sizeY
data modify storage struct_anim:animations root.animators[-1].placement.size.z set from block ~ ~ ~ sizeZ

function struct_anim:animation/new/area_marking/calc_placement_end