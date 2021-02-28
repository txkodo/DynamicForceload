#> kd_forceload:core/static/add/cut
# 
# チャンク内のエンティティからkd_forceloadタグを消去
# 
# @internal

# オーバーワールドの同位置にマーカーを移動
execute in overworld positioned ~ ~ ~ run tp fa0ea51d-6966-48e3-ad92-0940987bc39e ~ ~ ~

# 実行ディメンションの判別
function kd_forceload:custom/dimensions/activate

# チャンク情報に追加
data modify storage kd_forceload:core Pos set from entity fa0ea51d-6966-48e3-ad92-0940987bc39e Pos
data modify storage kd_forceload:core _.I set value [I;0,0]
execute store result storage kd_forceload:core _.I[0] int 1 run data get storage kd_forceload:core Pos[0] 0.0625
execute store result storage kd_forceload:core _.I[1] int 1 run data get storage kd_forceload:core Pos[2] 0.0625

# オーバーワールドの0,0,0にマーカーをもどす
execute in overworld positioned ~ ~ ~ run tp fa0ea51d-6966-48e3-ad92-0940987bc39e 0 0 0

data modify storage kd_forceload:core _.byte set value 1b

# scannedから重複削除
data modify storage kd_forceload:core _.list set value []
execute if data storage kd_forceload:core _{byte:1b} if data storage kd_forceload:core chunks[{active:1b}].scanned[-1] run function kd_forceload:core/static/cut.scanned
data modify storage kd_forceload:core chunks[{active:1b}].scanned append from storage kd_forceload:core _.list[]

# unscannedから重複削除
data modify storage kd_forceload:core _.list set value []
execute if data storage kd_forceload:core _{byte:1b} if data storage kd_forceload:core chunks[{active:1b}].unscanned[-1] run function kd_forceload:core/static/cut.unscanned
data modify storage kd_forceload:core chunks[{active:1b}].unscanned append from storage kd_forceload:core _.list[]