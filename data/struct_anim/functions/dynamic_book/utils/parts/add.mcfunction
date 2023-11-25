$data modify storage struct_anim:dynbook root.books[-1].page_ctx.current_part set value "$(name)"
function struct_anim:dynamic_book/utils/parts/_set_onclick with storage struct_anim:dynbook root.books[-1].page_ctx
function struct_anim:dynamic_book/utils/parts/_make with storage struct_anim:dynbook root.books[-1].page_ctx
data modify storage struct_anim:dynbook root.books[-1].parts.page[-1] append from storage struct_anim:dynbook root.books[-1].parts.current