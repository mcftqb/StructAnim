$data modify storage struct_anim:dynbook root.books[-1].page_ctx.current_subpart set value "$(name)"
function struct_anim:dynamic_book/utils/parts/sub/_add with storage struct_anim:dynbook root.books[-1].page_ctx