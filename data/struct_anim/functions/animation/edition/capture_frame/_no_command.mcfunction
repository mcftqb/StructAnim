function struct_anim:animation/tp/to_controller
tellraw @s [{"text": "", "color": "gold"}, {"text": "New frame", "bold": true, "hoverEvent": {"action": "show_text", "value": {"nbt":"root.animations[-1].frames[-1]", "storage": "struct_anim:animations", "color": "gold"}}}, " (", {"score":{"name": "#animation.capture_frame.num", "objective": "struct_anim.int"}}, ") created, now SAVE it manually!", {"text": " [", "color": "red"}, {"text": "Automate", "bold": true, "hoverEvent": {"action": "show_text","value": "Click to know how to automate frame creation"}, "clickEvent": {"action": "run_command", "value": "/function struct_anim:animation/edition/capture_frame/_show_automation_guide"}},{"text": "]", "color": "red"}]
