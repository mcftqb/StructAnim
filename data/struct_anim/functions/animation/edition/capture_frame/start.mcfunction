function struct_anim:animator/selection/get

execute if data storage struct_anim:animations root.animators[-1].locked run tellraw @s [{"text": "This action is unavailable while animation instance is locked!", "color": "red"}]
execute if data storage struct_anim:animations root.animators[-1].locked run return 0

function struct_anim:animation/search/animation_by_selection

function struct_anim:animation/frames/add
function struct_anim:animator/repair/run
function struct_anim:animation/edition/capture_frame/_prefill with storage struct_anim:animations root.animators[-1].controller
function struct_anim:animation/edition/capture_frame/_try_with_command with storage struct_anim:animations root.animators[-1].controller
