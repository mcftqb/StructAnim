execute store result score #dynbook.edit_frames.animation.defaults.reversed struct_anim.int run data get storage struct_anim:animations root.animations[-1].defaults.reversed
execute unless score #dynbook.edit_frames.animation.defaults.reversed struct_anim.int matches 1 run data modify storage struct_anim:dynbook root.books[-1].parts.animation.controls_ext.defaults_direction set value "normal"
execute if score #dynbook.edit_frames.animation.defaults.reversed struct_anim.int matches 1 run data modify storage struct_anim:dynbook root.books[-1].parts.animation.controls_ext.defaults_direction set value "reversed"