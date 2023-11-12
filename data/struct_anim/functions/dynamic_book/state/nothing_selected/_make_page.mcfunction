# uses selected book
execute store result storage struct_anim:dynbook root.books[-1].page_ctx.page_num int 1 run data get storage struct_anim:dynbook root.books[-1].parts.page
data modify storage struct_anim:dynbook root.books[-1].parts.page append value []

# Check if has frames
execute store success score #dynbook.edit_frames.animation.has_frames struct_anim.int if data storage struct_anim:animations root.animations[-1].frames[0]

function struct_anim:dynamic_book/state/nothing_selected/_add_component {path: "select"}
function struct_anim:dynamic_book/state/nothing_selected/_add_component {path: "animation/instance"}
function struct_anim:dynamic_book/state/nothing_selected/_add_component {path: "animation/choose"}

# Add page
function struct_anim:dynamic_book/state/nothing_selected/_add_page with storage struct_anim:dynbook root.books[-1].page_ctx
