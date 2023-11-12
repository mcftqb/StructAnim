setblock ~ ~1 ~ air
execute unless block ~ ~ ~ structure_block{mode:"LOAD"} run me Block below is not an Animation Controller
execute unless block ~ ~ ~ structure_block{mode:"LOAD"} run return 0

data modify storage struct_anim:utils root.args.get_animation.id set from block ~ ~ ~ metadata
function struct_anim:animation/search/animation_by_name

execute unless score #array_select.has_element struct_anim.int matches 1 run me No related animation found
execute unless score #array_select.has_element struct_anim.int matches 1 run return 0

function struct_anim:animator/get_block_pos

data modify storage struct_anim:utils root.args.animator_new.controller set from storage struct_anim:utils root.return.get_block_pos
data modify storage struct_anim:utils root.args.animator_new.animation set from storage struct_anim:animations root.animations[-1].animation
function struct_anim:animator/new

function struct_anim:animation/new/area_marking/calc_placement

function struct_anim:itemset/animation/edition/give with storage struct_anim:animations root.animations[-1]
