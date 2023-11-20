# Set macro selectors
$data modify storage struct_anim:dynbook root.books[-1].page_ctx.this_animation set value "root.animations[{animation:\\\\\"$(animation)\\\\\"}]"
$data modify storage struct_anim:dynbook root.books[-1].page_ctx.this_book set value "root.books[{player_id:$(player_id)}]"