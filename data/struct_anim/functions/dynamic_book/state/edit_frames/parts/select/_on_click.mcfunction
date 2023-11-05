function struct_anim:animator/discover/run

# Update book
execute if score #animator.discover.success struct_anim.int matches 1 run function struct_anim:dynamic_book/state/edit_frames/give