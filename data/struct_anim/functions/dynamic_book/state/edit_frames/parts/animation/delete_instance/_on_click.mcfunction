function struct_anim:animator/selection/get
function struct_anim:animation/search/animation_by_selection
execute unless score #get_selected_animator_id.has_element struct_anim.int matches 1 run return 0

execute if data storage struct_anim:animations root.animations[-1].frames[0] run function struct_anim:animation/edition/fill/print
function struct_anim:animator/delete/run

# Update book
function struct_anim:animator/discover/run
execute if score #animator.discover.success struct_anim.int matches 1 run function struct_anim:dynamic_book/state/edit_frames/give
execute unless score #animator.discover.success struct_anim.int matches 1 run function struct_anim:0quickstart