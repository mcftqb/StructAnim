function struct_anim:dynamic_book/state/edit_frames/parts/animation/defaults/_make_defaults with storage struct_anim:dynbook root.books[-1].page_ctx
function struct_anim:dynamic_book/state/edit_frames/parts/animation/defaults/make_defaults

$data modify storage struct_anim:dynbook root.books[-1].parts.current set value '["", {"text": "Defaults", "hoverEvent": {"action": "show_text","value": {"nbt":"$(this_book).parts.animation.controls_ext.defaults", "storage": "struct_anim:dynbook", "interpret": true}}},": ",{"text":"Add","bold":true,"color":"gold","hoverEvent": {"action": "show_text","value": {"text": "Overwrites current animation defaults with data from selected instance", "color": "gold"}},"clickEvent":{"action":"run_command","value":"$(on_click)_set"}}," | ",{"text":"Remove","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"$(on_click)_reset"}}," | ",{"text":"Apply","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"$(on_click)_apply"},"hoverEvent": {"action": "show_text","value": {"text": "Resets selected animation instance to animation defaults (if has any)", "color": "red"}}}]'
# tellraw @s 
