# uses selected book
execute store result storage struct_anim:dynbook root.books[-1].page_ctx.page_num int 1 run data get storage struct_anim:dynbook root.books[-1].parts.page
data modify storage struct_anim:dynbook root.books[-1].parts.page append value []

# Check if has frames
execute store success score #dynbook.edit_frames.animation.has_frames struct_anim.int if data storage struct_anim:animations root.animations[-1].frames[0]

# Add components
function struct_anim:dynamic_book/state/edit_frames/_add_component {path: "select"}

function struct_anim:dynamic_book/state/edit_frames/_add_component {path: "frames/new"}

execute unless score #dynbook.edit_frames.animation.has_frames struct_anim.int matches 0 run function struct_anim:dynamic_book/state/edit_frames/_add_component {path: "animation/controls"}

function struct_anim:dynamic_book/state/edit_frames/_add_component {path: "animation/instance"}

function struct_anim:dynamic_book/state/edit_frames/_add_component {path: "goto"}

execute unless score #dynbook.edit_frames.animation.has_frames struct_anim.int matches 0 run function struct_anim:dynamic_book/state/edit_frames/_add_component {path: "manage_callbacks"}

# Add page
function struct_anim:dynamic_book/state/edit_frames/_add_page with storage struct_anim:dynbook root.books[-1].page_ctx
