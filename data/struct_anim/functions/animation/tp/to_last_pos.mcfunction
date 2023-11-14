function struct_anim:animation/tp/selection/get
execute if data storage struct_anim:animations root.last_positions[-1].x run function struct_anim:animation/tp/_tp with storage struct_anim:animations root.last_positions[-1]
