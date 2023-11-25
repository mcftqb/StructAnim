# uses selected book

# Add components

# DANGER ZONE
data modify storage struct_anim:dynbook root.books[-1].parts.page[-1] append value '["[ = ", {"text": "DANGER ZONE", "color": "red", "bold": true}, " = ]"]'

function struct_anim:dynamic_book/utils/parts/add {name: "animation/delete"}

function struct_anim:dynamic_book/utils/parts/add {name: "animation/defaults"}

# Add page
function struct_anim:dynamic_book/utils/page/add
