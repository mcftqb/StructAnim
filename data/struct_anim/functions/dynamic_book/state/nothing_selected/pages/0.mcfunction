# uses selected book

# Check if has frames
execute store success score #dynbook.edit_frames.animation.has_frames struct_anim.int if data storage struct_anim:animations root.animations[-1].frames[0]

function struct_anim:dynamic_book/utils/parts/add {name: "select"}
function struct_anim:dynamic_book/utils/parts/add {name: "animation/instance"}
function struct_anim:dynamic_book/utils/parts/add {name: "animation/choose"}

# Add page
function struct_anim:dynamic_book/utils/page/add