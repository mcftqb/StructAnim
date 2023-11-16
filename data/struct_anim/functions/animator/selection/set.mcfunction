# select_animator uses args (animator: str)
# Runs as player to get thier name
function struct_anim:animator/selection/prefill_selected
data modify storage struct_anim:utils root.ctx.array_upsert set from storage struct_anim:utils root.ctx.array_select
data modify storage struct_anim:utils root.ctx.array_upsert.value_path set value ".animator"
data modify storage struct_anim:utils root.ctx.array_upsert.filter.player_id set from entity @s UUID
data modify storage struct_anim:utils root.ctx.array_upsert.value set from storage struct_anim:utils root.args.select_animator.animator
function struct_anim:utils/array/upsert with storage struct_anim:utils root.ctx.array_upsert
