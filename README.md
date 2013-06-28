**DEPRECATION NOTICE**: 

`vagrant-apt_cache` is no longer maintained. For additional features and Vagrant 1.1+ compatibility, 
consider using [vagrant-cachier](https://github.com/fgrehm/vagrant-cachier).


# Vagrant apt-cache

Share a common package cache among all VM instances. This gem will share a directory from the host to the `/var/cache/apt` on guest VMs to avoid downloading already-downloaded packages when building VMs.


## Installation

Add this line to your application's Gemfile:

    gem 'vagrant-apt_cache'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vagrant-apt_cache

## Usage

No configuration is currently provided. This gem is autoloaded by Vagrant.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
