$data modify storage struct_anim:dynbook root.books[-1].parts.sub."$(current_part)".all set value []

$data modify storage struct_anim:dynbook root.books[-1].page_ctx.this_subparts set value '$(this_book).parts.sub.\\\\"$(current_part)\\\\"'

$function struct_anim:dynamic_book/state/$(current_state)/parts/$(current_part)/make with storage struct_anim:dynbook root.books[-1].page_ctx