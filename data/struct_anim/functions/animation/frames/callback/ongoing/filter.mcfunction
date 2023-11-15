
# Force sync value
data modify storage struct_anim:animations root.animators_selected set from storage struct_anim:animations root.animators[-1]

scoreboard players set #animation.frame_callbacks.is_ongoing struct_anim.int 0
execute store success score #animation.frame_callbacks.is_ongoing struct_anim.int if data storage struct_anim:animations root.animators_selected{play: true}
