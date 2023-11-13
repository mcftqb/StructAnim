# Uses selected candidate animation
execute unless block ~ ~ ~ structure_block run return 0
execute if block ~ ~ ~ structure_block{sizeX: 0} run return 0
execute if block ~ ~ ~ structure_block{sizeY: 0} run return 0
execute if block ~ ~ ~ structure_block{sizeZ: 0} run return 0 
data modify storage struct_anim:animations root.animations append from storage struct_anim:animation_condidates root.animations[-1]


data modify storage struct_anim:utils root.args.animator_new.controller set from storage struct_anim:animation_condidates root.animations[-1].controller
data remove storage struct_anim:animations root.animations[-1].controller
data modify storage struct_anim:utils root.args.animator_new.animation set from storage struct_anim:animation_condidates root.animations[-1].animation
function struct_anim:animator/new
data remove storage struct_anim:animation_condidates root.animations[-1]

function struct_anim:animation/new/area_marking/calc_placement/run

function struct_anim:itemset/animation/edition/give with storage struct_anim:animations root.animations[-1]