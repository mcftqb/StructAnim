$data modify storage struct_anim:utils root.return.animator.selection.result append value '[{"text": "$(id)", "hoverEvent": {"action": "show_text", "value": {"text": "At $(x) $(y) $(z) in $(Dimension)", "color": "gold"}},"insertion": "$(id)", "clickEvent": {"action": "run_command","value": "/function struct_anim:dynamic_book/state/nothing_selected/parts/animation/choose/_select_instance/_set_animator {value: \\"$(id)\\"}"}}, " ", {"text": "[", "color": "red"}, {"text": "tp", "clickEvent": {"action": "suggest_command","value": "/execute in $(Dimension) positioned $(x) $(y) $(z) run tp ~ ~1 ~"}}, {"text": "]", "color": "red"}]'
# tellraw @s 
