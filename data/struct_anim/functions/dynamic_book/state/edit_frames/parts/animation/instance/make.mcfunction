$data modify storage struct_anim:dynbook root.books[-1].parts.current set value '["Animation: [",{"text":"Copy","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"$(on_click)_copy"}},"|",{"text":"New","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"$(on_click)_new_animation"}},"]"]'
# tellraw @s 
