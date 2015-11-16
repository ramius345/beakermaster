# == Class: beakermaster::params
#
# Class for setting all parameters on the beakermaster module
#
# === Parameters
#
class beakermaster::params(
  $ruby_version   = 'ruby-1.9.3-p551'
  $beaker_version = '2.28.0'
  $ensure         = 'present'
){}
