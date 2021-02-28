#> kd_forceload:custom/schedule
#
# kd_forceload:core/gc/main を繰り返すためのスケジュール
# 
# 動的スケジュールの使用頻度の設定。に応じて各々調整するとよい
# 
# @internal

# 直下のコマンドを下に繰り返すことで1tickにスキャンするチャンク数を調整できる
function kd_forceload:core/gc/main
# function kd_forceload:core/gc/main
# function kd_forceload:core/gc/main
# function kd_forceload:core/gc/main


# 数値を変えるとmainが動くtick間隔を変えられる
schedule function kd_forceload:core/gc/schedule 1 replace