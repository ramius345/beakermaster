class beakermaster::rvm {
  class { '::rvm': }
  rvm::system_user { beaker: ; }
}
