data modify storage struct_anim:dynbook root.books[-1].pages set value []
data modify storage struct_anim:dynbook root.books[-1].parts.page set value []

function struct_anim:dynamic_book/utils/page/_step with storage struct_anim:dynbook root.books[-1].page_ctx
data remove storage struct_anim:dynbook root.books[-1].current_page