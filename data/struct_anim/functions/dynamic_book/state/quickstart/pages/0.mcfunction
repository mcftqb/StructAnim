# uses selected book

# Add components
function struct_anim:dynamic_book/utils/parts/add {name: "items/corner"}
function struct_anim:dynamic_book/utils/parts/add {name: "goto"}
function struct_anim:dynamic_book/utils/parts/add {name: "items/controller"}
function struct_anim:dynamic_book/utils/parts/add {name: "finish"}

# Add page
$data modify storage struct_anim:dynbook root.books[-1].current_page set value '["Place ",{"nbt":"$(this_page)[0]", "storage":"struct_anim:dynbook", "interpret":"true"}, " to mark border of animation area, then ",{"nbt":"$(this_page)[1]", "storage":"struct_anim:dynbook", "interpret":"true"}," ",{"nbt":"$(this_page)[2]", "storage":"struct_anim:dynbook", "interpret":"true"}," and click DETECT button, then ensure that selected area matches your expectations and finally",{"nbt":"$(this_page)[3]", "storage":"struct_anim:dynbook", "interpret":"true"},"to finish animation initialization."]'
