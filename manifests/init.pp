# == Class: beakermaster
#
# Main entry point for the beakermaster module
#
class beakermaster inherits beakermaster::params(
  $ensure = $beakermaster::params::ensure )
{
  if ( $ensure == 'present' ) {
    include beakermaster::rvm
    include beakermaster::ruby
    include beakermaster::gems
  }
  else {
    #todo ...
  }
}
