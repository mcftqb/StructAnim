# uses selected animator
execute if data storage struct_anim:animations root.animators[-1].last_pos run function struct_anim:animation/tp/_tp with storage struct_anim:animations root.animators[-1].last_pos
