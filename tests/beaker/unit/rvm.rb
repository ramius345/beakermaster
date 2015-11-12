test_name 'Beakermaster - should install RVM'
tag 'beakermaster','unit'
confine :to,{},get_hosts{beakermaster}

def mainfest
"""
include beakermaster
"""
end

step "Install the beakermaster"
apply_string_manifest_on( beakermaster, manifest, :acceptable_exit_codes => [0,2] )

step "Verify RVM is installed"
on( beakermaster , "sudo -u beaker rvm --help") { |result|
  puts result.stdout
  puts result.stderr
}
