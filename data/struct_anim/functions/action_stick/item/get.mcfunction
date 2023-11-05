# Uses selected action

data modify storage struct_anim:dynbook root.action_stick.item set value {display:{Lore:['[{"text":"","color":"dark_green"},{"keybind":"key.use","bold":true},{"text":" to apply current action"}]','[{"text":"","color":"dark_green"},{"keybind":"key.sneak","bold":true},{"text":"+"},{"keybind":"key.use","bold":true},{"text":" to change current action"}]']},struct_anim_itemset:"animation_edition",struct_anim_action_stick_current:0,struct_anim_action_stick:1b}
data modify storage struct_anim:dynbook root.action_stick.item.struct_anim_action_stick_current set from storage struct_anim:dynbook root.action_stick.actions[-1].num
function struct_anim:action_stick/item/_get_name with storage struct_anim:dynbook root.action_stick.actions[-1]