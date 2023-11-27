# Uses selected candidate animation
execute unless block ~ ~ ~ structure_block run return 0
function struct_anim:animation/new/area_marking/ensure_has_size
execute unless score #animation.size_check.error struct_anim.int matches 0 run function struct_anim:utils/error/show {e:["Size must be set!"]}
execute unless score #animation.size_check.error struct_anim.int matches 0 run return 0

data modify storage struct_anim:animations root.animations append from storage struct_anim:animation_candidates root.animations[-1]


data modify storage struct_anim:utils root.args.animator_new.controller set from storage struct_anim:animation_candidates root.animations[-1].controller
data remove storage struct_anim:animations root.animations[-1].controller
data modify storage struct_anim:utils root.args.animator_new.animation set from storage struct_anim:animation_candidates root.animations[-1].animation
function struct_anim:animator/new
data remove storage struct_anim:animation_candidates root.animations[-1]

function struct_anim:animation/new/area_marking/calc_placement/run
function struct_anim:animation/new/area_marking/clear_borders/run with storage struct_anim:animations root.animators[-1].placement

function struct_anim:itemset/animation/edition/give with storage struct_anim:animations root.animations[-1]

tellraw @a[gamemode=creative,distance=..8] {"text": "Animation successfully created!", "color": "gold"}
tellraw @a[gamemode=creative,distance=..8] {"text": "Don't change relative position.", "color": "dark_green"}