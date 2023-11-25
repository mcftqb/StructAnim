execute store result storage struct_anim:dynbook root.books[-1].page_ctx.page_num int 1 run data get storage struct_anim:dynbook root.books[-1].parts.page
data modify storage struct_anim:dynbook root.books[-1].parts.page append value []

data remove storage struct_anim:dynbook root.books[-1].current_page

function struct_anim:dynamic_book/utils/page/__step with storage struct_anim:dynbook root.books[-1].page_ctx

execute unless data storage struct_anim:dynbook root.books[-1].current_page run return 0

data modify storage struct_anim:dynbook root.books[-1].pages append from storage struct_anim:dynbook root.books[-1].current_page
function struct_anim:dynamic_book/utils/page/_step with storage struct_anim:dynbook root.books[-1].page_ctx
