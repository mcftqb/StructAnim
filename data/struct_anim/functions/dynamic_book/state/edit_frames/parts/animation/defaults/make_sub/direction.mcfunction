function struct_anim:dynamic_book/state/edit_frames/parts/animation/defaults/make_direction
$data modify storage struct_anim:dynbook root.books[-1].parts.current_subpart set value '["Direction: ", {"nbt":"$(this_book).parts.animation.controls_ext.defaults_direction", "storage": "struct_anim:dynbook"}]'