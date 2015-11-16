class beakermaster::ruby inherits beakermaster::params(
  $ruby_version = $beakermaster::params::ruby_version )
{
  rvm_system_ruby { $ruby_version:
    ensure => 'present',
    default_use => true
  }
}
