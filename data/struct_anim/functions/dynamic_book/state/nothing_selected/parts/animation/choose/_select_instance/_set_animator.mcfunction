$data modify storage struct_anim:utils root.args.select_animator.animator set value "$(value)"
function struct_anim:animator/selection/set

# Update book
function struct_anim:dynamic_book/clear
function struct_anim:itemset/animation/edition/_give

$tellraw @s {"color": "gold", "text":"Animation instance successfully selected!", "hoverEvent": {"action": "show_text","value": {"text": "$(value)","color": "gold","font": "uniform","bold": true}}}