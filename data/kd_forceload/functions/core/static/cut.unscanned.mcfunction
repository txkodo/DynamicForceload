#> kd_forceload:core/static/cut.unscanned
#
# unscannedから重複削除
#
# @internal

# 読み込みチャンク座標を仮データにコピー
data modify storage kd_forceload:core _.i set from storage kd_forceload:core _.I

# unscanned[-1]チャンク座標を仮データにコピーし、成功したら(チャンクが違ったら)仮リストにデータを追加
execute store success storage kd_forceload:core _.byte byte 1 run data modify storage kd_forceload:core _.i set from storage kd_forceload:core chunks[{active:1b}].unscanned[-1]
execute if data storage kd_forceload:core _{byte:1b} run data modify storage kd_forceload:core _.list append from storage kd_forceload:core chunks[{active:1b}].unscanned[-1]

# unscanned[-1]を削除
data remove storage kd_forceload:core chunks[{active:1b}].unscanned[-1]

execute if data storage kd_forceload:core _{byte:1b} if data storage kd_forceload:core chunks[{active:1b}].unscanned[-1] run function kd_forceload:core/static/cut.unscanned