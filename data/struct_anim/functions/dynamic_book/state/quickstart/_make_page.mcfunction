# uses selected book
execute store result storage struct_anim:dynbook root.books[-1].page_ctx.page_num int 1 run data get storage struct_anim:dynbook root.books[-1].parts.page
data modify storage struct_anim:dynbook root.books[-1].parts.page append value []

# Add components
function struct_anim:dynamic_book/state/quickstart/_add_component {path: "items/corner"}
function struct_anim:dynamic_book/state/quickstart/_add_component {path: "goto"}
function struct_anim:dynamic_book/state/quickstart/_add_component {path: "items/controller"}
function struct_anim:dynamic_book/state/quickstart/_add_component {path: "finish"}

# Add page
$data modify storage struct_anim:dynbook root.books[-1].pages append value '["Place ",{"nbt":"$(this_book).parts.page[$(page_num)][0]", "storage":"struct_anim:dynbook", "interpret":"true"}, " to mark border of animation area, then ",{"nbt":"$(this_book).parts.page[$(page_num)][1]", "storage":"struct_anim:dynbook", "interpret":"true"}," ",{"nbt":"$(this_book).parts.page[$(page_num)][2]", "storage":"struct_anim:dynbook", "interpret":"true"}," and click DETECT button, then ensure that selected area matches your expectations and finally",{"nbt":"$(this_book).parts.page[$(page_num)][3]", "storage":"struct_anim:dynbook", "interpret":"true"},"to finish animation initialization."]'