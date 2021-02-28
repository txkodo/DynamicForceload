#> kd_forceload:core/add/add-temporary
# 
# 実行位置をtemporaryチャンクリストに追加。
# 
# @internal

# オーバーワールドの同位置にマーカーを移動
execute in overworld positioned ~ ~ ~ run tp fa0ea51d-6966-48e3-ad92-0940987bc39e ~ ~ ~

# 実行ディメンションの判別
function kd_forceload:custom/dimensions/activate

# チャンク情報に追加
data modify storage kd_forceload:core Pos set from entity fa0ea51d-6966-48e3-ad92-0940987bc39e Pos
data modify storage kd_forceload:core chunks.[{actiive:1b}].scanned append value [I;0,0]
execute store result storage kd_forceload:core chunks.[{actiive:1b}].scanned[-1][0] int 1 run data get storage kd_forceload:core Pos[0] 0.0625
execute store result storage kd_forceload:core chunks.[{actiive:1b}].scanned[-1][1] int 1 run data get storage kd_forceload:core Pos[2] 0.0625

# オーバーワールドの0,0,0にマーカーをもどす
execute in overworld positioned ~ ~ ~ run tp fa0ea51d-6966-48e3-ad92-0940987bc39e 0 0 0