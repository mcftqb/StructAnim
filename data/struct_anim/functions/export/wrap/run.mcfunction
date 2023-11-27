# export.all.wrap uses args (values: any[])
# returns result: str[]
data modify storage struct_anim:utils root.return.export.all.wrap.result set value []
data modify storage struct_anim:utils root.args.str.interpret.value set value '{"nbt":"root.args.export.all.wrap.values[0]", "storage":"struct_anim:utils", "font":"uniform"}'
function struct_anim:export/wrap/_step