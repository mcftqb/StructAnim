function struct_anim:animator/selection/get
execute store result score #on_playpause.playing struct_anim.int run data get storage struct_anim:animations root.animators[-1].play

execute unless score #on_playpause.playing struct_anim.int matches 1 run function struct_anim:animator/play/contineous/play_selected
execute if score #on_playpause.playing struct_anim.int matches 1 run function struct_anim:animator/play/contineous/pause_selected

# Update book
function struct_anim:dynamic_book/state/edit_frames/give