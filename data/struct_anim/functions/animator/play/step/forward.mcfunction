# Uses selected animator and animation

function struct_anim:animation/frames/get_frame
scoreboard players add #frames.current struct_anim.int 1
function struct_anim:animation/frames/set_frame
