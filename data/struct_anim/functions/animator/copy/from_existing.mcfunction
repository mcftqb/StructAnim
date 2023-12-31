fill ~ ~1 ~ ~ ~1 ~ air replace command_block

function struct_anim:utils/error/reset
execute unless block ~ ~ ~ structure_block{mode:"LOAD"} run function struct_anim:utils/error/show {e:["Block below is not an Animation Controller"]}
execute unless score #is_error struct_anim.int matches 0 run return 0

function struct_anim:animation/new/area_marking/ensure_has_size
execute unless score #animation.size_check.error struct_anim.int matches 0 run function struct_anim:utils/error/show {e:["Load structure at least once before saving!"]}
execute unless score #is_error struct_anim.int matches 0 run return 0

data modify storage struct_anim:utils root.args.get_animation.id set from block ~ ~ ~ metadata
function struct_anim:animation/search/animation_by_name

execute unless score #array_select.has_element struct_anim.int matches 1 run function struct_anim:utils/error/show {e:["No related animation found"]}
execute unless score #is_error struct_anim.int matches 0 run return 0

function struct_anim:animator/get_block_pos

data modify storage struct_anim:utils root.args.animator_new.controller set from storage struct_anim:utils root.return.get_block_pos
data modify storage struct_anim:utils root.args.animator_new.animation set from storage struct_anim:animations root.animations[-1].animation
function struct_anim:animator/new

function struct_anim:animation/new/area_marking/calc_placement/run

function struct_anim:animation/defaults/apply_other

function struct_anim:actions/pause
execute unless data storage struct_anim:animations root.animators[-1].frame_name run function struct_anim:actions/to_start
function struct_anim:animation/frames/place

execute at @s run function struct_anim:itemset/animation/edition/_give

execute if data storage struct_anim:animations root.animators[-1].locked run function struct_anim:animator/hide/run

tellraw @s [{"text": "", "color": "gold"},{"text": "Animation", "bold": true, "hoverEvent": {"action": "show_text","value": [{"text": "ID: ", "color": "gold"}, {"nbt":"root.animations[-1].animation", "storage": "struct_anim:animations", "font": "uniform", "bold": true}]}}, " successfully instantiated!"]
tellraw @s {"text": "Don't change relative position.", "color": "dark_green"}