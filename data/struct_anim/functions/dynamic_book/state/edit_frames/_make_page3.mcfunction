# uses selected book
execute store result storage struct_anim:dynbook root.books[-1].page_ctx.page_num int 1 run data get storage struct_anim:dynbook root.books[-1].parts.page
data modify storage struct_anim:dynbook root.books[-1].parts.page append value []

# Add components

# DANGER ZONE
data modify storage struct_anim:dynbook root.books[-1].parts.page[-1] append value '["[ = ", {"text": "DANGER ZONE", "color": "red", "bold": true}, " = ]"]'

function struct_anim:dynamic_book/state/edit_frames/_add_component {path: "animation/delete"}

function struct_anim:dynamic_book/state/edit_frames/_add_component {path: "animation/defaults"}

# Add page
function struct_anim:dynamic_book/state/edit_frames/_add_page with storage struct_anim:dynbook root.books[-1].page_ctx
