setblock ~ ~1 ~ air
execute unless block ~ ~ ~ structure_block{mode:"LOAD"} run me Block below is not an Animation Controller
execute unless block ~ ~ ~ structure_block{mode:"LOAD"} run return 0

data modify storage struct_anim:utils root.args.get_animator.id set from block ~ ~ ~ metadata
function struct_anim:animator/get

execute unless score #array_select.has_element struct_anim.int matches 1 run me No related animation found
execute unless score #array_select.has_element struct_anim.int matches 1 run return 0

data modify storage struct_anim:animations root.animators append from storage struct_anim:animations root.animators[-1]

function struct_anim:animator/_make_id
function struct_anim:animator/mark/run

data modify storage struct_anim:animations root.animators[-1].copy_of set from block ~ ~ ~ metadata

function struct_anim:animator/get_block_pos
data modify storage struct_anim:animations root.animators[-1].controller set from storage struct_anim:utils root.return.get_block_pos
data modify storage struct_anim:animations root.animators[-1].play set value false

function struct_anim:animation/new/area_marking/calc_placement/run

data modify storage struct_anim:utils root.args.select_animator.animator set from storage struct_anim:animations root.animators[-1].id
function struct_anim:animator/selection/set
function struct_anim:animation/search/animation_by_selection

function struct_anim:itemset/animation/edition/give with storage struct_anim:animations root.animations[-1]
