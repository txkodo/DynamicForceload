#> kd_forceload:core/add/add
# 
# 実行者の座標をチャンクリストに追加し、実行者をforceloadの主としてタグ付け
# 
# @internal

# 実行ディメンションの判別
function kd_forceload:custom/dimensions/activate

# チャンク情報に追加
data modify storage kd_forceload:core Pos set from entity @s Pos
data modify storage kd_forceload:core chunks[{active:1b}].scanned append value [I;0,0]
execute store result storage kd_forceload:core chunks[{active:1b}].scanned[-1][0] int 1 run data get storage kd_forceload:core Pos[0] 0.0625
execute store result storage kd_forceload:core chunks[{active:1b}].scanned[-1][1] int 1 run data get storage kd_forceload:core Pos[2] 0.0625