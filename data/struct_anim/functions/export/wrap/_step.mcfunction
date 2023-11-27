execute unless data storage struct_anim:utils root.args.export.all.wrap.values[0] run return 0

function struct_anim:utils/str/interpret/run
data modify storage struct_anim:utils root.return.export.all.wrap.result append from storage struct_anim:utils root.return.str.interpret.result

data remove storage struct_anim:utils root.args.export.all.wrap.values[0]
function struct_anim:export/wrap/_step