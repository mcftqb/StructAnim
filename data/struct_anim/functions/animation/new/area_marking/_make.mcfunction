execute unless block ~ ~ ~ structure_block run return 0
execute if block ~ ~ ~ structure_block{sizeX: 0} run return 0
execute if block ~ ~ ~ structure_block{sizeY: 0} run return 0
execute if block ~ ~ ~ structure_block{sizeZ: 0} run return 0 
data modify storage struct_anim:animations animations prepend from storage struct_anim:animation_condidates search.animation
function struct_anim:animator/new
$data remove storage struct_anim:animation_condidates animations[{animation: "$(animation)"}]

# Calc placement cords
# X
execute store result score #VAR_0 struct_anim.int run data get block ~ ~ ~ x
execute store result score #VAR_1 struct_anim.int run data get block ~ ~ ~ posX
scoreboard players operation #VAR_0 struct_anim.int += #VAR_1 struct_anim.int
execute store result storage struct_anim:animations animators[0].placement.x int 1 run scoreboard players get #VAR_0 struct_anim.int

# Y
execute store result score #VAR_0 struct_anim.int run data get block ~ ~ ~ y
execute store result score #VAR_1 struct_anim.int run data get block ~ ~ ~ posY
scoreboard players operation #VAR_0 struct_anim.int += #VAR_1 struct_anim.int
execute store result storage struct_anim:animations animators[0].placement.y int 1 run scoreboard players get #VAR_0 struct_anim.int

# Z
execute store result score #VAR_0 struct_anim.int run data get block ~ ~ ~ z
execute store result score #VAR_1 struct_anim.int run data get block ~ ~ ~ posZ
scoreboard players operation #VAR_0 struct_anim.int += #VAR_1 struct_anim.int
execute store result storage struct_anim:animations animators[0].placement.z int 1 run scoreboard players get #VAR_0 struct_anim.int

$data modify storage struct_anim:animations animators[0].placement.Dimension set from entity @p[name="$(author)"] Dimension

function struct_anim:itemset/animation/edition/give with storage struct_anim:animations animations[0]