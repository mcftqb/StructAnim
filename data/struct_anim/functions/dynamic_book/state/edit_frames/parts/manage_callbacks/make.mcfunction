function struct_anim:animator/selection/get
function #struct_anim:callbacks/group

$data modify storage struct_anim:dynbook root.books[-1].parts.current set value '["",{"text":"Triggers","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"$(on_click)_triggers"}},"|",{"text":"Callbacks","bold":true,"color":"gold","hoverEvent":{"action":"show_text","value":{"nbt":"$(this_animator).callbacks.all[]", "color":"dark_green", "separator":{"text":";\\n","color":"gray"},"storage":"struct_anim:animations"}},"clickEvent":{"action":"run_command","value":"$(on_click)_callbacks"}}]'
# tellraw @s 
