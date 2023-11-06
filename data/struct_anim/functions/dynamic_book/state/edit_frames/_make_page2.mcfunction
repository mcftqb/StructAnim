# uses selected book
execute store result storage struct_anim:dynbook root.books[-1].page_ctx.page_num int 1 run data get storage struct_anim:dynbook root.books[-1].parts.page
data modify storage struct_anim:dynbook root.books[-1].parts.page append value []

# Add components
function struct_anim:dynamic_book/state/edit_frames/_add_component {path: "visibility"}

# DANGER ZONE
data modify storage struct_anim:dynbook root.books[-1].parts.page[-1] append value '["[ = ", {"text": "DANGER ZONE", "color": "red", "bold": true}, " = ]"]'

execute unless score #dynbook.edit_frames.animation.has_frames struct_anim.int matches 0 run function struct_anim:dynamic_book/state/edit_frames/_add_component {path: "frames/delete"}

# Add page
function struct_anim:dynamic_book/state/edit_frames/_add_page with storage struct_anim:dynbook root.books[-1].page_ctx
