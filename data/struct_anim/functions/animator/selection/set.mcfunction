# select_animator uses args (animator: str)
# Runs as player to get thier name
function struct_anim:id/player/select_by_uuid

data modify storage struct_anim:utils root.ctx.array_upsert set value {storage: "struct_anim:animations", path: "root.selected_animators", filter: {}, value_path:".animator", value: ""}
data modify storage struct_anim:utils root.ctx.array_upsert.filter.player set from storage struct_anim:id root.players[-1].name
data modify storage struct_anim:utils root.ctx.array_upsert.value set from storage struct_anim:utils root.args.select_animator.animator
function struct_anim:utils/array/upsert with storage struct_anim:utils root.ctx.array_upsert
