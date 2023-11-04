execute store result storage struct_anim:dynbook root.action_stick.actions_count int 1 run data get storage struct_anim:dynbook root.action_stick.actions
data modify storage struct_anim:dynbook root.action_stick.actions append value {}
data modify storage struct_anim:dynbook root.action_stick.actions[-1].num set from storage struct_anim:dynbook root.action_stick.actions_count