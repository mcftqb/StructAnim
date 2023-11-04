function struct_anim:action_stick/action/_new
data modify storage struct_anim:dynbook root.action_stick.actions[-1] merge value {name: "New Frame", action:"new_frame"}