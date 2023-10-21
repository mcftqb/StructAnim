function struct_anim:animator/selection/get
execute store success score #on_playpause.playing struct_anim.int if data storage struct_anim:animations root.selected_animator{play: true}
execute if score #on_playpause.playing struct_anim.int matches 0 run function struct_anim:animator/play/contineous/play_selected
execute if score #on_playpause.playing struct_anim.int matches 1 run function struct_anim:animator/play/contineous/pause_selected

# Update book
function struct_anim:dynamic_book/state/edit_frames/give