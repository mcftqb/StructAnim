# Set macro selectors
$data modify storage struct_anim:dynbook root.books[-1].page_ctx.this_animator set value "root.animators[{id:\\\\\"$(id)\\\\\"}]"
$data modify storage struct_anim:dynbook root.books[-1].page_ctx.this_animation set value "root.animations[{animation:\\\\\"$(animation)\\\\\"}]"
function struct_anim:dynamic_book/utils/ctx/add_selectors