fill ~ ~1 ~ ~ ~1 ~ air replace command_block

function struct_anim:utils/error/reset
execute unless block ~ ~ ~ structure_block{mode:"LOAD"} run function struct_anim:utils/error/show {e:["Block below is not an Animation Controller"]}
execute unless score #is_error struct_anim.int matches 0 run return 0

data modify storage struct_anim:utils root.args.get_animator.id set from block ~ ~ ~ metadata
function struct_anim:animator/get

execute unless score #array_select.has_element struct_anim.int matches 1 run function struct_anim:utils/error/show {e:["No related animation found"]}
execute unless score #is_error struct_anim.int matches 0 run return 0

data modify storage struct_anim:animations root.animators append from storage struct_anim:animations root.animators[-1]

function struct_anim:animator/_make_id
function struct_anim:animator/mark/run

data modify storage struct_anim:animations root.animators[-1].copy_of set from block ~ ~ ~ metadata

function struct_anim:animator/get_block_pos
data modify storage struct_anim:animations root.animators[-1].controller set from storage struct_anim:utils root.return.get_block_pos

data modify block ~ ~ ~ sizeX set from storage struct_anim:animations root.animators[-1].placement.size.x
data modify block ~ ~ ~ sizeY set from storage struct_anim:animations root.animators[-1].placement.size.y
data modify block ~ ~ ~ sizeZ set from storage struct_anim:animations root.animators[-1].placement.size.z
function struct_anim:animation/new/area_marking/calc_placement/run

data modify storage struct_anim:utils root.args.select_animator.animator set from storage struct_anim:animations root.animators[-1].id
function struct_anim:animator/selection/set
function struct_anim:animation/search/animation_by_selection

function struct_anim:actions/pause
function struct_anim:animation/frames/place

execute at @s run function struct_anim:itemset/animation/edition/_give
execute if data storage struct_anim:animations root.animators[-1].locked run function struct_anim:animator/hide/run

tellraw @s [{"text": "", "color": "gold"},{"text": "Animation instance", "bold": true, "hoverEvent": {"action": "show_text","value": [{"text": "Copy of ", "color": "gold"}, {"nbt":"root.animators[-1].copy_of", "storage": "struct_anim:animations", "font": "uniform", "bold": true}]}}, " successfully copied!"]
tellraw @s {"text": "Don't change relative position.", "color": "dark_green"}