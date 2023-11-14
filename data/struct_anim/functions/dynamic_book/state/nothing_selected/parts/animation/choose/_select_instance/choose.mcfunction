function struct_anim:dynamic_book/state/nothing_selected/parts/animation/choose/_select_instance/_start

tellraw @s [{"text": "","color": "gold"}, "Click to choose animation instance: ", {"nbt":"root.return.animator.selection.result[]", "storage": "struct_anim:utils", "interpret": true, "separator": {"text": ", ", "font": "default", "color": "gray", "bold": false}, "font": "uniform", "bold": true}]
tellraw @s [{"text": "","color": "red"},"[", {"text": "undo tp","color": "gold","bold": true,"clickEvent": {"action": "run_command","value": "/function struct_anim:animation/tp/to_last_pos"}}, "]"]