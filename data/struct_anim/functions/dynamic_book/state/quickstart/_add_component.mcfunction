$function struct_anim:dynamic_book/state/quickstart/_set_onclick {path: "$(path)"}
$function struct_anim:dynamic_book/state/quickstart/parts/$(path)/make with storage struct_anim:dynbook root.books[-1].page_ctx
data modify storage struct_anim:dynbook root.books[-1].parts.page[-1] append from storage struct_anim:dynbook root.books[-1].parts.current