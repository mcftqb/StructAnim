$execute unless data storage struct_anim:animations root.animations[-1].defaults run data modify storage struct_anim:dynbook root.books[-1].parts.sub."$(current_part)".all append value '{"text": "No defaults", "color": "red"}'
execute unless data storage struct_anim:animations root.animations[-1].defaults run return 0

# Add sub-components
$data modify storage struct_anim:dynbook root.books[-1].parts.sub."$(current_part)".all append value '{"text": "Default values:", "color":"gold"}'
function struct_anim:dynamic_book/utils/parts/sub/add {name: "sub/frame"}
function struct_anim:dynamic_book/utils/parts/sub/add {name: "sub/interval"}
function struct_anim:dynamic_book/utils/parts/sub/add {name: "sub/step"}
function struct_anim:dynamic_book/utils/parts/sub/add {name: "sub/direction"}
function struct_anim:dynamic_book/utils/parts/sub/add {name: "sub/seed"}
function struct_anim:dynamic_book/utils/parts/sub/add {name: "sub/integrity"}
function struct_anim:dynamic_book/utils/parts/sub/add {name: "sub/mirror"}
function struct_anim:dynamic_book/utils/parts/sub/add {name: "sub/rotation"}
execute if data storage struct_anim:animations root.animations[-1].defaults.callbacks.all[0] run function struct_anim:dynamic_book/utils/parts/sub/add {name: "sub/callbacks"}
