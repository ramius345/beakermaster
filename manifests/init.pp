# == Class: beakermaster
#
# Main entry point for the beakermaster module
#
class beakermaster {
  include beakermaster::params
  notify { 'Test': }
}
