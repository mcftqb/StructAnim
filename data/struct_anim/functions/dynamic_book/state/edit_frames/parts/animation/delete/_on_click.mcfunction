function struct_anim:animator/selection/get
execute unless score #get_selected_animator_id.has_element struct_anim.int matches 1 run return 0

function struct_anim:animation/search/animation_by_selection
execute unless score #array_select.has_element struct_anim.int matches 1 run return 0

function struct_anim:animation/delete/run

# Update book
function struct_anim:animator/discover/run
execute if score #animator.discover.success struct_anim.int matches 1 run function struct_anim:dynamic_book/state/edit_frames/give
execute unless score #animator.discover.success struct_anim.int matches 1 run function struct_anim:0quickstart