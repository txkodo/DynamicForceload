#> kd_forceload:core/gc/scan
# 
# チャンクリストの先頭のチャンクを走査
# 
# @internal

# 座標に移動
data modify storage kd_forceload:core Pos set value [0d, 0d, 0d]
execute store result storage kd_forceload:core Pos[0] double 1 run data get storage kd_forceload:core chunks[{scanning:1b}].unscanned[-1][0] 16
execute store result storage kd_forceload:core Pos[2] double 1 run data get storage kd_forceload:core chunks[{scanning:1b}].unscanned[-1][1] 16
data modify entity @s Pos set from storage kd_forceload:core Pos
function kd_forceload:custom/dimensions/scan
tp @s 0 0 0