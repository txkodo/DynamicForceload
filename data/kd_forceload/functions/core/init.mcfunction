#> kd_forceload:core/init
#
# forceloadの追加削除を管理する機構
#
# @internal

#>
# @internal
  scoreboard objectives add kd_forceload dummy
  #declare score_holder $x
  #declare score_holder $z
  #declare score_holder $16
  #declare tag kd_forceload

  #declare storage kd_forceload:core

  #alias entity Pos fa0ea51d-6966-48e3-ad92-0940987bc39e

scoreboard players set $16 kd_forceload 16

forceload add 0 0
kill fa0ea51d-6966-48e3-ad92-0940987bc39e
summon armor_stand 0 0 0 {Marker:1b,Invisible:1b,UUID:[I;-99703523,1768311011,-1382938304,-1736719458]}

data modify storage kd_forceload:core _.byte set value 0b
data modify storage kd_forceload:core Pos set value {}

# ディメンションデータの設定
function kd_forceload:custom/dimensions/init
data modify storage kd_forceload:core chunks[].scanned set value []
data modify storage kd_forceload:core chunks[].unscanned set value []
data modify storage kd_forceload:core chunks[].temporary set value []

# scheduleの開始
schedule function kd_forceload:core/gc/schedule 1 replace