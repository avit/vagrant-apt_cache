# -*- encoding: utf-8 -*-
require File.expand_path('../lib/vagrant-apt_cache/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Andrew Vit"]
  gem.email         = ["andrew@avit.ca"]
  gem.description   = <<-DESC
    Shares the /var/cache/apt/ folder for Ubuntu/Debian instances by storing
    already-downloaded packages on the host.
  DESC
  gem.summary       = %q{Share apt-cache among vagrant VMs of the same box type}
  gem.homepage      = "http://github.com/avit/vagrant-apt_cache"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "vagrant-apt_cache"
  gem.require_paths = ["lib"]
  gem.version       = Vagrant::AptCache::VERSION
end
