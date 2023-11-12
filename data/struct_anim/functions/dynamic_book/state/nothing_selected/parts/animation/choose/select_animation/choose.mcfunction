function struct_anim:dynamic_book/state/nothing_selected/parts/animation/choose/select_animation/_start

tellraw @s [{"text": "","color": "gold"}, "Click to choose animation: ", {"nbt":"root.return.animation.selection.result[]", "storage": "struct_anim:utils", "interpret": true, "separator": {"text": ", ", "font": "default", "color": "gray", "bold": false}, "font": "uniform", "bold": true}]