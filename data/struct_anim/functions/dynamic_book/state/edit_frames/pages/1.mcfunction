# uses selected book

# Add components
execute unless data storage struct_anim:animations root.animators[-1].locked run function struct_anim:dynamic_book/utils/parts/add {name: "visibility"}

function struct_anim:dynamic_book/utils/parts/add {name: "unselect"}

# DANGER ZONE
data modify storage struct_anim:dynbook root.books[-1].parts.page[-1] append value '["[ = ", {"text": "DANGER ZONE", "color": "red", "bold": true}, " = ]"]'

function struct_anim:dynamic_book/utils/parts/add {name: "fill"}

execute if data storage struct_anim:animations root.animators[-1].locked run function struct_anim:dynamic_book/utils/parts/add {name: "unlock"}

execute unless score #dynbook.edit_frames.animation.has_frames struct_anim.int matches 0 run function struct_anim:dynamic_book/utils/parts/add {name: "frames/delete"}

function struct_anim:dynamic_book/utils/parts/add {name: "animation/delete_instance"}

# Add page
function struct_anim:dynamic_book/utils/page/add