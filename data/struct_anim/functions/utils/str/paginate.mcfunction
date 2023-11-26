# str.paginate uses args (values: any[], separator: str, page_size: int)
# Joins strings, then split them to limit max line length
# Returns result: str[]

data modify storage struct_anim:utils root.args.str.concat.separator set from storage struct_anim:utils root.args.str.paginate.separator
data modify storage struct_anim:utils root.args.str.concat.values set from storage struct_anim:utils root.args.str.paginate.values
function struct_anim:utils/str/concat/run

data modify storage struct_anim:utils root.args.str.to_arr.size set from storage struct_anim:utils root.args.str.paginate.page_size
data modify storage struct_anim:utils root.return.str.paginate.text set from storage struct_anim:utils root.return.str.concat.result
data modify storage struct_anim:utils root.args.str.to_arr.value set from storage struct_anim:utils root.return.str.concat.result
function struct_anim:utils/str/to_arr/run
data modify storage struct_anim:utils root.return.str.paginate.result set from storage struct_anim:utils root.return.str.to_arr.result