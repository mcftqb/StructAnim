execute store result score #dynbook.edit_frames.animation.playing struct_anim.int run data get storage struct_anim:animations root.animators[-1].play
execute unless score #dynbook.edit_frames.animation.playing struct_anim.int matches 1 run data modify storage struct_anim:dynbook root.books[-1].parts.animation.controls_ext.play_pause set value "▷"
execute if score #dynbook.edit_frames.animation.playing struct_anim.int matches 1 run data modify storage struct_anim:dynbook root.books[-1].parts.animation.controls_ext.play_pause set value "⬛"