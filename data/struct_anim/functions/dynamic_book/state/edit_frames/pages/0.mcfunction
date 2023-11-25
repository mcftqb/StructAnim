# uses selected book

# Check if has frames
execute store success score #dynbook.edit_frames.animation.has_frames struct_anim.int if data storage struct_anim:animations root.animations[-1].frames[0]

# Add components
function struct_anim:dynamic_book/utils/parts/add {name: "select"}
execute unless data storage struct_anim:animations root.animators[-1].locked run function struct_anim:dynamic_book/utils/parts/add {name: "frames/new"}

execute unless score #dynbook.edit_frames.animation.has_frames struct_anim.int matches 0 run function struct_anim:dynamic_book/utils/parts/add {name: "animation/controls"}

function struct_anim:dynamic_book/utils/parts/add {name: "animation/instance"}

function struct_anim:dynamic_book/utils/parts/add {name: "goto"}

execute unless score #dynbook.edit_frames.animation.has_frames struct_anim.int matches 0 run function struct_anim:dynamic_book/utils/parts/add {name: "manage_callbacks"}

# Add page
function struct_anim:dynamic_book/utils/page/add