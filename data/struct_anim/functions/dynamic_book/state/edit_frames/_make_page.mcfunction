$data modify storage struct_anim:dynbook root.book.pages append value '[{"text":" ["},{"text":"Select Animation","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"$(on_click)_select_animation"},"hoverEvent":{"action":"show_text","contents":"Current animation: $(animation)"}},{"text":"]\\n\\n","color":"reset"},{"text":"["},{"text":"New Frame","color":"gold","clickEvent":{"action":"run_command","value":"$(on_click)_capture_frame"}},{"text":"] | Total: $(frames_count)","color":"reset"},{"text":"\\n\\nPlay: "},{"text":"<|","color":"gold","clickEvent":{"action":"run_command","value":"$(on_click)_step_back"}},{"text":" $(frame) ","color":"reset"},{"text":"|>","color":"gold","clickEvent":{"action":"run_command","value":"$(on_click)_step_forward"}},{"text":"  [","color":"reset"},{"text":"$(playpause)","color":"gold","clickEvent":{"action":"run_command","value":"$(on_click)_playpause"}},{"text":"]","color":"reset"},{"text":"\\nUpdate interval:"},{"text":" $(interval) ","bold":"true","color":"gold","clickEvent":{"action":"run_command","value":"$(on_click)_edit"},"hoverEvent":{"action":"show_text","contents":"Click to edit"}},{"text":"\\nStep:","color":"reset"},{"text":" $(step) ","bold":"true","color":"gold","clickEvent":{"action":"run_command","value":"$(on_click)_edit"},"hoverEvent":{"action":"show_text","contents":"Direction: $(direction)\\nClick to edit"}},{"text":"frame","color":"reset"},{"text":"\\n\\nAnimation: ["},{"text":"Copy","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"$(on_click)_copy"}},{"text":"|","color":"reset"},{"text":"New","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"$(on_click)_new_animation"}},{"text":"]","color":"reset"},{"text":"\\n\\nGo to: ["},{"text":"Core","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"$(on_click)_tp_controller"}},{"text":"|","color":"reset"},{"text":"Return","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"$(on_click)_tp_back"}},{"text":"]"},{"text":"\\n\\nTriggers","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"$(on_click)_give_triggers"}},{"text":" ","color":"reset"},{"text":"Callbacks","bold":true,"color":"gold","hoverEvent":{"action":"show_text","value":{"nbt":"root.animators[{id:\\"$(id)\\"}].callbacks.all[]", "color":"dark_green", "separator":{"text":";\\n","color":"gray"},"storage":"struct_anim:animations"}},"clickEvent":{"action":"run_command","value":"$(on_click)_manage_callbacks"}}]'
