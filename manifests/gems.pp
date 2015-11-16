class beakermaster::gems inherits beakermaster::params(
  $ruby_version   = $beakermaster::params::ruby_version
  $beaker_version = $beakermaster::params::beaker_version )
{
  rvm_gem {
    'beaker':
      name         => 'beaker',
      ruby_version => $ruby_version,
      ensure       => $beaker_version,
      require      => Rvm_system_ruby[$ruby_version];
  }
}
