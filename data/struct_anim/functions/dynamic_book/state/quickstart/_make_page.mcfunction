# uses selected book
execute store result storage struct_anim:dynbook root.books[-1].page_ctx.page_num int 1 run data get storage struct_anim:dynbook root.books[-1].parts.page
data modify storage struct_anim:dynbook root.books[-1].parts.page append value []

# Add components
function struct_anim:dynamic_book/state/quickstart/_add_component {path: "items/corner"}
function struct_anim:dynamic_book/state/quickstart/_add_component {path: "goto"}
function struct_anim:dynamic_book/state/quickstart/_add_component {path: "items/controller"}
function struct_anim:dynamic_book/state/quickstart/_add_component {path: "finish"}

# Add page
function struct_anim:dynamic_book/state/quickstart/_add_page_1 with storage struct_anim:dynbook root.books[-1].page_ctx
